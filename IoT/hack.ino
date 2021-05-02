#include <dht.h>
#include<SoftwareSerial.h>
#define USE_ARDUINO_INTERRUPTS true 
#include <PulseSensorPlayground.h> 
dht DHT;
int k=95;
#define DHT11_PIN 5
SoftwareSerial esp8266(3,4);
#define SSID "HARI11_5G"
#define PASS "Bareilly@11" 
const int LED13 = 13; 
int Threshold = 550;
PulseSensorPlayground pulseSensor;
String sendAT(String command, const int timeout)
{
  String response="";
  esp8266.print(command);
  long int time=millis();
  while((time+timeout)>millis())
  {
    while(esp8266.available())
    {
      char c=esp8266.read();
      response+=c;
    }
  }
  Serial.print(response);
  return response;
}
void setup()
{
  
  pinMode(13,OUTPUT);
  Serial.begin(9600);
  esp8266.begin(9600);
  sendAT("AT+RST\r\n",2000);
  sendAT("AT\r\n",1000);
  sendAT("AT+CWMODE=1\r\n",1000);
  sendAT("AT+CWJAP=\""SSID"\",\""PASS"\"\r\n",2000);
  while(!(esp8266.find("OK")))
  { 
    
  }
  sendAT("AT+CIFSR\r\n",1000);
  sendAT("AT+CIPMUX=0\r\n",1000);
  Serial.println("Patient Monitor");
  pulseSensor.analogInput(A0);
  pulseSensor.blinkOnPulse(LED13); 
  pulseSensor.setThreshold(Threshold);
  if (pulseSensor.begin()) 
  {
  Serial.println("pulseSensor");
  }
}
void loop()
{
  if(digitalRead(6)==HIGH)
  {
    int temphumdata=DHT.read11(DHT11_PIN);
    float rep=DHT.temperature;
    int rephum= DHT.humidity;
    Serial.print("Temperature = ");
    Serial.print(rep);
    Serial.print(" Humidity = ");
    Serial.println(rephum);
    int myBPM = pulseSensor.getBeatsPerMinute();
    if (pulseSensor.sawStartOfBeat())
    { 
      Serial.print("BPM: ");
      Serial.println(myBPM);  
    }
    String temp = String(int(rep));
    String humid = String(rephum);
    String BPMa =String(myBPM);
    String sp=String(k);
    updateTS(temp,humid,BPMa);
    delay(10000);
  }
 }

 
void updateTS(String T,String H,String PR)
{
  Serial.print("");
  sendAT("AT+CIPSTART=\"TCP\",\"api.thingspeak.com\",80\r\n",1000);
  delay(2000);
  String cmdlen;
  String cmd = "GET /update?key=PXC38DIADE5E3CFI&field1="+T+"&field2="+H+"&field3="+PR+"&field4=98\r\n";
  cmdlen=cmd.length();
  sendAT("AT+CIPSEND="+cmdlen+"\r\n",2000);
  esp8266.print(cmd);
  Serial.println("");
  sendAT("AT+CIPCLOSE\r\n",2000);
  Serial.println("");
}
