import 'package:fit_alliance/Homepage.dart';
import 'package:fit_alliance/MyHomePage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';


class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(title: Center(child: Text("Fit Alliance")),),
        body: SafeArea(
          child: ListView(
            children: <Widget>[
              Column(
                children: [
                  //SizedBox(height: 150,),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Center(child: Image.asset("assets/logo.jpg")),
                  ),
                  TextField(
                    decoration: InputDecoration(
                      filled: true,
                      labelText: 'Username',
                      fillColor: Colors.white,
                      alignLabelWithHint: true,
                    ),
                  ),

                  SizedBox(height: 12.0),

                  TextField(
                    decoration: InputDecoration(
                      filled: true,
                      labelText: 'Password',
                      fillColor: Colors.white,

                    ),
                    obscureText: true,
                  ),
                  SizedBox(height: 12.0),
                  Center(
                    child: ElevatedButton(
                      child: Text("Sign In"),
                      onPressed: () {
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context) => MyHomePage()));
                      },
                    ),
                  )
                ],
              ),
            ],
          ),
        )
    );
  }
}
