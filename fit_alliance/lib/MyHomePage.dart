import 'package:fit_alliance/Homepage.dart';
import 'package:fit_alliance/Settings.dart';
import 'package:fit_alliance/friends.dart';
import 'package:fit_alliance/leaderboard.dart';
import 'package:fit_alliance/target.dart';
import 'package:flutter/material.dart';



class MyHomePage extends StatefulWidget {

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  int _selectedIndex = 0;

  static  List _classOption = [
    Homepage(),
    Target(),
    LeaderBoard(),
    Friends(),
    Setting(),

  ];

  void _onItemTapped(int index){
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.black,
      body: _classOption.elementAt(_selectedIndex),

      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const  <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_task_rounded),
            label: 'Target',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.leaderboard_outlined),
            label: 'Leaderboard',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_pin_circle_sharp),
            label: 'Friends',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
        selectedItemColor: Colors.deepOrangeAccent,
        backgroundColor: Colors.grey,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,

      ),

    );
  }

}