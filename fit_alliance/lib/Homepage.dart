import 'package:fit_alliance/articles.dart';
import 'package:fit_alliance/nutrition.dart';
import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(title: Center(child: Text("Fit Alliance")),),
      body: Column(
        children: [
          SizedBox(
            height: 20.0,
          ),
          Center(
              child: Text(
            "Hi! Naman",
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
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Center(
                        child: Text(
                      "Start Workout Session",
                      style: TextStyle(color: Colors.white, fontSize: 25),
                    )),
                  ),
                  Container(
                    padding: EdgeInsets.only(bottom: 12.0),
                    constraints: BoxConstraints(maxHeight: 200.0),
                    alignment: Alignment.bottomCenter,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/pic1.jpeg"),
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
                        child: Text("Get Started"),
                        onPressed: () {},
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Center(
                        child: Text(
                      "Nutrition Tracker",
                      style: TextStyle(color: Colors.white, fontSize: 25),
                    )),
                  ),
                  Container(
                    padding: EdgeInsets.only(bottom: 12.0),
                    constraints: BoxConstraints(maxHeight: 200.0),
                    alignment: Alignment.bottomCenter,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/pic2.jpeg"),
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
                        child: Text("Start Tracking"),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Nutrition()),
                          );
                        },
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Center(
                        child: Text(
                      "Spotlight Articles",
                      style: TextStyle(color: Colors.white, fontSize: 25),
                    )),
                  ),
                  Container(
                    padding: EdgeInsets.only(bottom: 12.0),
                    constraints: BoxConstraints(maxHeight: 200.0),
                    alignment: Alignment.bottomCenter,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/pic3.jpeg"),
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
                        child: Text("Read More"),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Article()),
                          );
                        },
                      ),
                    ),
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
