import 'package:fit_alliance/loginscreen.dart';
import 'package:flutter/material.dart';

import 'MyHomePage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return FutureBuilder(
      future: Future.delayed(Duration(seconds: 2)),
      builder: (context , AsyncSnapshot snapshot){
        if(snapshot.connectionState == ConnectionState.waiting){
          return MaterialApp(
            debugShowCheckedModeBanner: false,
              home: Splash()
          );
        }else{
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Fit Alliance',
            // color: Colors.deepOrangeAccent,
            theme: ThemeData(
              primarySwatch: Colors.deepOrange,
              textTheme: TextTheme(bodyText2: TextStyle(color: Colors.white)),
            ),
            home: LoginScreen(),
          );
        }
      }
    );


  }
}

class Splash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Image.asset("assets/logo.jpg"),
      ),
    );
  }
}

