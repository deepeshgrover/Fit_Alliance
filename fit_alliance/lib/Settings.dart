import 'package:flutter/material.dart';


class Setting extends StatefulWidget {
  @override
  _SettingState createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Center(child: Text("Fit Alliance")),),
      backgroundColor: Colors.black,
      body: Column(
        children: [
          SizedBox(height: 20.0,),

          Center(child: Text("Settings" , style: TextStyle(fontWeight: FontWeight.bold , fontSize: 30 , fontStyle: FontStyle.italic),)),

          SizedBox(height: 12.0,),

          Expanded(
            child: ListView(
              children: [
                ListTile(
                  leading: Icon(Icons.person , color: Colors.white,),
                  title: Text("My Account" , style: TextStyle(color: Colors.white),),
                  subtitle: Text("Account Details and Profile" , style: TextStyle(color: Colors.white),),
                ),
                ListTile(
                  leading: Icon(Icons.security_sharp , color: Colors.white,),
                  title: Text("Security" , style: TextStyle(color: Colors.white),),
                  subtitle: Text("Security Options and Controls" , style: TextStyle(color: Colors.white),),
                ),
                ListTile(
                  leading: Icon(Icons.privacy_tip_outlined , color: Colors.white,),
                  title: Text("Privacy" , style: TextStyle(color: Colors.white),),
                  subtitle: Text("Information Collected and Usage" , style: TextStyle(color: Colors.white),),
                ),
                ListTile(
                  leading: Icon(Icons.email_outlined , color: Colors.white,),
                  title: Text("Communication" , style: TextStyle(color: Colors.white),),
                  subtitle: Text("E-mail Invites and Notifications" , style: TextStyle(color: Colors.white),),
                ),
                ListTile(
                  leading: Icon(Icons.help , color: Colors.white,),
                  title: Text("Help & Support" , style: TextStyle(color: Colors.white),),
                  subtitle: Text("FAQ & Help-Desk" , style: TextStyle(color: Colors.white),),
                ),
                ListTile(
                  leading: Icon(Icons.logout , color: Colors.white,),
                  title: Text("Log out",style: TextStyle(color: Colors.white),),
                  subtitle: Text("Log out Of Your Account",style: TextStyle(color: Colors.white),),
                ),
              ],
            ),
          ),
        ],
      )
    );
  }
}
