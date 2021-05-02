import 'package:flutter/material.dart';
import 'package:material_floating_search_bar/material_floating_search_bar.dart';

import 'dialog.dart';

class Challenge extends StatefulWidget {
  @override
  _ChallengeState createState() => _ChallengeState();
}

class _ChallengeState extends State<Challenge> {

  List<Exercises> _challenges = [
    Exercises("Planks"),
    Exercises("Mountain Position"),
    Exercises("Push Ups",),
  ];



  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: Center(child: Text("Fit Alliance")),
        ),
      body: Column(
        children: [
          SizedBox(height: 20.0,),
          Center(child: Text("Challenge Your Friend" , style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30, fontStyle: FontStyle.italic),)),

          SizedBox(height: 100.0,),

          // Search Bar

          Text("Online"),
          SizedBox(height: 20.0,),

          Expanded(
            child: ListView(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListTile(
                    leading: ClipRRect(borderRadius: BorderRadius.circular(20.0), child: Image.asset("assets/l2.jpeg")),
                    title: Text("Deepesh" , style: TextStyle(color: Colors.white,fontSize: 30),),
                    trailing: ElevatedButton(
                      style: ButtonStyle(
                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18.0),
                                side: BorderSide(color: Colors.white))),
                      ),
                      child: Text("Challenge"),
                      onPressed: () {
                        openDialog();
                      },
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListTile(
                    leading: ClipRRect(borderRadius: BorderRadius.circular(20.0), child: Image.asset("assets/l3.jpeg")),
                    title: Text("Deepali" , style: TextStyle(color: Colors.white,fontSize: 30),),
                    trailing: ElevatedButton(
                      style: ButtonStyle(
                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0),
                            side: BorderSide(color: Colors.white))),
                      ),
                      child: Text("Challenge"),
                      onPressed: () {openDialog();},
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListTile(
                    leading: ClipRRect(borderRadius: BorderRadius.circular(20.0), child: Image.asset("assets/l5.jpeg")),
                    title: Text("Rohan" , style: TextStyle(color: Colors.white,fontSize: 30),),
                    trailing: ElevatedButton(
                      style: ButtonStyle(
                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0),
                            side: BorderSide(color: Colors.white))),
                      ),
                      child: Text("Challenge"),
                      onPressed: () {openDialog();},
                    ),
                  ),
                ),Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListTile(
                    leading: ClipRRect(borderRadius: BorderRadius.circular(20.0), child: Image.asset("assets/l1.jpeg")),
                    title: Text("Naman" , style: TextStyle(color: Colors.white , fontSize: 30),),
                    trailing: ElevatedButton(
                      style: ButtonStyle(
                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0),
                            side: BorderSide(color: Colors.white))),
                      ),
                      child: Text("Challenge"),
                      onPressed: () {openDialog();},
                    ),
                  ),
                ),
              ],
            ),
          ),

        ],
      ),
    );
  }
  void openDialog() {
    showDialog(
        context: context,
        builder: (ctx) {
          return AlertDialog(
            title: Text('Challenges' , textAlign: TextAlign.center,),
            actions: <Widget>[
              ElevatedButton(
                  onPressed: (){
                    Navigator.pop(context);
                    final snackBar = SnackBar(
                        content: Text("Challenge Request Send !!" , style: TextStyle(fontWeight: FontWeight.bold,color: Colors.deepOrangeAccent , fontSize: 20.0), textAlign: TextAlign.center,)
                    );
                    ScaffoldMessenger.of(context).showSnackBar(snackBar);
                  },
                  child: Text("OK")
              ),
              ElevatedButton(
                  onPressed: (){
                    Navigator.pop(context);
                  },
                  child: Text("Cancel")
              )
            ],
            content: Container(
                width: 300,
                height: 400,
                child: MultiSelectionExample(_challenges)),
          );
        });
  }
}

class Exercises{
  Exercises(this.challengeName);

  String challengeName;
  bool isSelected=false;
}
