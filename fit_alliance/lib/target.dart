import 'package:flutter/material.dart';

class Target extends StatefulWidget {
  @override
  _TargetState createState() => _TargetState();
}

class _TargetState extends State<Target> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Center(child: Text("Fit Alliance")),),
      backgroundColor: Colors.black,
      body: Column(
        children: [
          SizedBox(height: 20.0,),
          Center(
              child: Text(
                "Set Target",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    fontStyle: FontStyle.italic),
              )),
          SizedBox(
            height: 12.0,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: ListView(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.only(bottom: 12.0),
                    constraints: BoxConstraints(maxHeight: 200.0),
                    alignment: Alignment.bottomCenter,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/pic4.jpeg"),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: ConstrainedBox(
                      constraints:
                      BoxConstraints.expand(height: 40, width: 220),
                      child: ElevatedButton(
                        style: ButtonStyle(
                          shape:
                          MaterialStateProperty.all<RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(18.0),
                                  side: BorderSide(color: Colors.white))),
                        ),
                        child: Text("Present Target"),
                        onPressed: () {},
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Center(child: Text("Suitable for beginner/intermediate users" , style: TextStyle(fontSize: 20),)),
                  ),
                  SizedBox(height: 10,),
                  Center(child: Text("Daily,Weekly & Monthly Targets Recommended By App")),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    padding: EdgeInsets.only(bottom: 12.0),
                    constraints: BoxConstraints(maxHeight: 200.0),
                    alignment: Alignment.bottomCenter,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/pic5.jpeg"),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: ConstrainedBox(
                      constraints:
                      BoxConstraints.expand(height: 40, width: 220),
                      child: ElevatedButton(
                        style: ButtonStyle(
                          shape:
                          MaterialStateProperty.all<RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(18.0),
                                  side: BorderSide(color: Colors.white))),
                        ),
                        child: Text("Customize Target"),
                        onPressed: () {},
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Center(child: Text("Suitable for Advanced/Professional users" , style: TextStyle(fontSize: 20),)),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
