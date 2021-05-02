import 'package:fit_alliance/challenge.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Friends extends StatefulWidget {
  @override
  _FriendsState createState() => _FriendsState();
}

class _FriendsState extends State<Friends> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
       title: Center(child: Text("Fit Alliance")),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.group_add , color: Colors.white,),
            onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Challenge()),
              );
            },
          )
        ],
      ),
      body: Column(
        children: [
          SizedBox(height: 20.0,),
          Center(child: Text("Friends" , style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30, fontStyle: FontStyle.italic),)),

          SizedBox(height: 25.0,),

          //Search Bar

          Text("Online"),
          SizedBox(height: 8.0,),
          Expanded(
            child: ListView(
              children: [
                ListTile(
                  leading: ClipRRect(borderRadius: BorderRadius.circular(20.0), child: Image.asset("assets/l2.jpeg")),
                  title: Text("Deepesh" , style: TextStyle(color: Colors.white,fontSize: 30),),
                  trailing: Icon(Icons.messenger_outline , color: Colors.white,),
                ),
              ],
            ),
          ),
          Text("Offline"),
          SizedBox(height: 8.0,),
          Expanded(
            child: ListView(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListTile(
                    leading: ClipRRect(borderRadius: BorderRadius.circular(20.0), child: Image.asset("assets/l3.jpeg")),
                    title: Text("Deepali" , style: TextStyle(color: Colors.white,fontSize: 30),),
                    trailing: Icon(Icons.messenger_outline, color: Colors.white,),
                  ),
                ),
                SizedBox(height: 12.0,),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListTile(
                    leading: ClipRRect(borderRadius: BorderRadius.circular(20.0), child: Image.asset("assets/l5.jpeg")),
                    title: Text("Rohan" , style: TextStyle(color: Colors.white,fontSize: 30),),
                    trailing: Icon(Icons.messenger_outline, color: Colors.white,),
                  ),
                ),
                SizedBox(height: 12.0,),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListTile(
                    leading: ClipRRect(borderRadius: BorderRadius.circular(20.0), child: Image.asset("assets/l1.jpeg")),
                    title: Text("Naman" , style: TextStyle(color: Colors.white , fontSize: 30),),
                    trailing: Icon(Icons.messenger_outline, color: Colors.white,),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
