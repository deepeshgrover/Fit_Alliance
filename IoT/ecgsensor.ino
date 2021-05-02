int pulsePin = 0;
int blinkPin = 13;
int fadePin = 8;
int fadeRate = 0;
int BPM;
int Signal;
int IBI = 600;
boolean Pulse = false;
boolean QS = false;
boolean serialVisual = true;
volatile int rate[10];
long sampleCounter = 0;
long lastBeatTime = 0;
int P = 512;
int T = 512;
int thresh = 525;
int amp = 100;
boolean firstBeat = true;
boolean secondBeat = false;
void setup()
{
  pinMode(blinkPin,OUTPUT); 
  pinMode(fadePin,OUTPUT); 
  Serial.begin(9600); 
  interruptSetup(); 
  //analogReference(EXTERNAL);
}
void loop()
{
  serialOutput();
  if (QS == true) 
    {
      fadeRate = 255; 
      serialOutputWhenBeatHappens(); 
      QS = false;
    }
  ledFadeToBeat(); 
  delay(20); 
}
void ledFadeToBeat()
{
  fadeRate -= 15; 
  fadeRate = constrain(fadeRate,0,255); 
  analogWrite(fadePin,fadeRate); 
}
void interruptSetup() 
{
  TCCR2A = 0x02; 
  TCCR2B = 0x06; 
  OCR2A = 0X7C; 
  TIMSK2 = 0x02; 
  sei(); 
}
void serialOutput() 
{ 
  if (serialVisual == true)
  {
    arduinoSerialMonitorVisual('-', Signal); 
  }
  else
  {
    sendDataToSerial('S', Signal);
  }
}
void serialOutputWhenBeatHappens()
{
  if (serialVisual == true) 
  {
    Serial.print("*** Heart-Beat Happened *** "); 
    Serial.print("BPM: ");
    Serial.println(BPM);
  }
  else
  {
    sendDataToSerial('B',BPM);
    sendDataToSerial('Q',IBI);
  }
}
void arduinoSerialMonitorVisual(char symbol, int data )
{
  const int sensorMin = 0; 
  const int sensorMax = 1024; 
  int sensorReading = data;
  int range = map(sensorReading, sensorMin, sensorMax, 0, 11); 
  switch (range)
  {
    case 0:
      Serial.println(""); 
      break;
    case 1:
      Serial.println("---"); 
      break;
    case 2:
      Serial.println("------");
      break;
    case 3:
      Serial.println("---------"); 
      break; 
    case 4:
      Serial.println("------------"); 
      break;
    case 5:
      Serial.println("--------------|-");
      break;
    case 6:
      Serial.println("--------------|---");
      break; 
    case 7:
      Serial.println("--------------|-------");
      break;
    case 8:
      Serial.println("--------------|----------");
      break; 
    case 9:
      Serial.println("--------------|----------------");
      break;
    case 10:
      Serial.println("--------------|-------------------"); 
      break; 
    case 11:
      Serial.println("--------------|-----------------------");
      break; 
   }
}
void sendDataToSerial(char symbol, int data )
{
  Serial.print(symbol); 
  Serial.println(data); 
}
ISR(TIMER2_COMPA_vect)
{ 
  cli(); 
  Signal = analogRead(pulsePin);
  sampleCounter += 2; 
  int N = sampleCounter - lastBeatTime; 
  if(Signal < thresh && N > (IBI/5)*3)  
  { 
    if (Signal < T)
    {
      T = Signal;
    }
  }
  if(Signal > thresh && Signal > P)
  { 
    P = Signal;
  } 
  if (N > 250)
  { 
    if ( (Signal > thresh) && (Pulse == false) && (N > (IBI/5)*3) ) 
    {
      Pulse = true; 
      digitalWrite(blinkPin,HIGH); 
      IBI = sampleCounter - lastBeatTime; 
      lastBeatTime = sampleCounter; 
      if(secondBeat)
      {   
        secondBeat = false; 
        for(int i=0; i<=9; i++) 
        {
          rate[i] = IBI;
        }
      } 
      if(firstBeat)
      {
        firstBeat = false;
        secondBeat = true;
        sei();
        return; 
      } 
      word runningTotal = 0;
      for(int i=0; i<=8; i++) 
      {
        rate[i] = rate[i+1]; 
        runningTotal += rate[i];
      }
      rate[9]=IBI;
      runningTotal += rate[9]; 
      runningTotal /= 10; 
      BPM = 60000/runningTotal;
      QS=true;
    }
  }
  if (Signal < thresh && Pulse == true) 
  { 
    digitalWrite(blinkPin,LOW); 
    Pulse = false; 
    amp = P - T; 
    thresh = amp/2 + T; 
    P = thresh; 
    T = thresh; 
  }
  if (N > 2500)
{ 
  thresh = 512; 
  P = 512; 
  T = 512; 
  lastBeatTime = sampleCounter; 
  firstBeat = true;
  secondBeat = false; 
  }
  sei();
 }
