import 'package:flutter/material.dart';

class Nutrition extends StatefulWidget {
  @override
  _NutritionState createState() => _NutritionState();
}

class _NutritionState extends State<Nutrition> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text("Fit Alliance"),
        backgroundColor: Colors.deepOrangeAccent,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: (){
            Navigator.pop(context);
          },
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 20.0,
          ),
          Center(
              child: Text("Nutrition Tracker", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30, fontStyle: FontStyle.italic),)),
          SizedBox(height: 50.0,),
          Container(
            padding: EdgeInsets.only(bottom: 12.0),
            constraints: BoxConstraints(maxHeight: 200.0),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Colors.deepOrangeAccent,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Center(
              child: Column(
                children: [
                  SizedBox(height: 50.0,),
                  Icon(Icons.camera_alt , size: 70.0,),
                  Text("Take A Photo Of Your Meal" , style: TextStyle(color: Colors.black , fontSize: 20.0),),
                ],
              ),
            ),
          ),
          SizedBox(height: 70.0,),
          Container(
            padding: EdgeInsets.only(bottom: 12.0),
            constraints: BoxConstraints(maxHeight: 200.0),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Center(
              child: Column(
                children: [
                  SizedBox(height: 50.0,),
                  Icon(Icons.photo , size: 70.0,color: Colors.white,),
                  Text("Upload A Photo From Phone" , style: TextStyle(color: Colors.white , fontSize: 20.0),),
                ],
              ),
            ),
          ),
          SizedBox(height: 70.0,),

          ConstrainedBox(
            constraints: BoxConstraints.expand(height: 40.0,width: 220.0),
            child: ElevatedButton(
              child: Text("My Food Diary"),
              style: ButtonStyle(
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(48.0),
                    )),
              ),
              onPressed: (){},
            ),
          ),
        ],
      ),
    );
  }
}
