import 'package:flutter/material.dart';

class LeaderBoard extends StatefulWidget {
  @override
  _LeaderBoardState createState() => _LeaderBoardState();
}

class _LeaderBoardState extends State<LeaderBoard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Center(child: Text("Fit Alliance")),),
      backgroundColor: Colors.black,
      body: Column(
        children: [
          SizedBox(height: 20,),
          Center(child: Text("LeaderBoard" , style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30, fontStyle: FontStyle.italic),)),
          Center(child: Text("Level:Beginner")),

          SizedBox(height: 20.0,),
          
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [Text("Daily"), SizedBox(width: 10.0,), Text("Weekly" , style: TextStyle(color: Colors.deepOrangeAccent),), SizedBox(width: 10.0,),Text("Monthly"),],
            ),
          ),

          SizedBox(height: 20.0,),

          Expanded(
            child: ListView(
              children: [
                ListTile(
                  leading: ClipRRect(borderRadius: BorderRadius.circular(20.0), child: Image.asset("assets/l1.jpeg")),
                  title: Text("Naman" , style: TextStyle(color: Colors.white , fontSize: 30),),
                  trailing: Text("1800",style: TextStyle(color: Colors.white,fontSize: 30),),
                ),
                SizedBox(height: 12.0,),
                ListTile(
                  leading: ClipRRect(borderRadius: BorderRadius.circular(20.0), child: Image.asset("assets/l2.jpeg")),
                  title: Text("Deepesh" , style: TextStyle(color: Colors.white,fontSize: 30),),
                  trailing: Text("1789",style: TextStyle(color: Colors.white,fontSize: 30),),
                ),
                SizedBox(height: 12.0,),
                ListTile(
                  leading: ClipRRect(borderRadius: BorderRadius.circular(20.0), child: Image.asset("assets/l3.jpeg")),
                  title: Text("Deepali" , style: TextStyle(color: Colors.white,fontSize: 30),),
                  trailing: Text("1722",style: TextStyle(color: Colors.white,fontSize: 30),),
                ),
                SizedBox(height: 12.0,),
                ListTile(
                  leading: ClipRRect(borderRadius: BorderRadius.circular(20.0), child: Image.asset("assets/l4.jpeg")),
                  title: Text("Garima" , style: TextStyle(color: Colors.white,fontSize: 30),),
                  trailing: Text("1652",style: TextStyle(color: Colors.white,fontSize: 30),),
                ),
                SizedBox(height: 12.0,),
                ListTile(
                  leading: ClipRRect(borderRadius: BorderRadius.circular(20.0), child: Image.asset("assets/l5.jpeg")),
                  title: Text("Rohan" , style: TextStyle(color: Colors.white,fontSize: 30),),
                  trailing: Text("1622",style: TextStyle(color: Colors.white,fontSize: 30),),
                ),
                SizedBox(height: 12.0,),
                ListTile(
                  leading: ClipRRect(borderRadius: BorderRadius.circular(20.0), child: Image.asset("assets/l6.jpeg")),
                  title: Text("Shivangi" , style: TextStyle(color: Colors.white,fontSize: 30),),
                  trailing: Text("1599",style: TextStyle(color: Colors.white,fontSize: 30),),
                ),
                SizedBox(height: 12.0,),
                ListTile(
                  leading: ClipRRect(borderRadius: BorderRadius.circular(20.0), child: Image.asset("assets/l7.jpeg")),
                  title: Text("Harshit" , style: TextStyle(color: Colors.white,fontSize: 30),),
                  trailing: Text("1570",style: TextStyle(color: Colors.white,fontSize: 30),),
                ),
                SizedBox(height: 12.0,),
                ListTile(
                  leading: ClipRRect(borderRadius: BorderRadius.circular(20.0), child: Image.asset("assets/l8.jpeg")),
                  title: Text("Natansh" , style: TextStyle(color: Colors.white,fontSize: 30),),
                  trailing: Text("1200",style: TextStyle(color: Colors.white,fontSize: 30),),
                ),
              ],
            ),
          ),

        ],
      ),
    );
  }
}
