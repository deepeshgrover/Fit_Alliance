import 'package:flutter/material.dart';


class Article extends StatefulWidget {
  @override
  _ArticleState createState() => _ArticleState();
}

class _ArticleState extends State<Article> {

  String dropDownValue = "Date Posted";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            SizedBox(height: 20.0,),
            Center(child: Text("Spotlight Articles" , style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30, fontStyle: FontStyle.italic),)),
            SizedBox(height: 25.0,),
            Text("Tailored Content For You" , style: TextStyle(fontSize: 20.0),),
            //SizedBox(height: 25.0,),
            Expanded(
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [Row(
                  children: <Widget>[
                    Container(
                      //padding: EdgeInsets.only(bottom: 12.0),
                      constraints: BoxConstraints(maxHeight: 150.0 , maxWidth: 200.0),
                      alignment: Alignment.bottomCenter,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/s1.jpeg"),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Container(
                        alignment: Alignment.bottomCenter,
                        constraints: BoxConstraints(maxHeight: 40),
                        color: Colors.deepOrangeAccent,
                        child: Text("Nandini Story-loosing 10 kg in 2 months" , style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold , fontStyle: FontStyle.italic), textAlign: TextAlign.center,),
                      )
                    ),
                    SizedBox(width: 40.0,),

                    Container(
                      //padding: EdgeInsets.only(bottom: 12.0),
                        constraints: BoxConstraints(maxHeight: 150.0 , maxWidth: 200.0),
                        alignment: Alignment.bottomCenter,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/s2.jpeg"),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: Container(
                          alignment: Alignment.bottomCenter,
                          constraints: BoxConstraints(maxHeight: 40),
                          color: Colors.deepOrangeAccent,
                          child: Text("Neha Story-Yoga each day" , style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold , fontStyle: FontStyle.italic), textAlign: TextAlign.center,),
                        )
                    ),

                  ],
                ),]
              ),
            ),
            // SizedBox(height: 8.0,),
            Text("All Articles" , style: TextStyle(fontSize: 20.0),),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(0.0),
                child: Center(
                  child: Row(
                    children: [
                      Text("Sort By:"),SizedBox(width: 8.0,),
                      DropdownButton(
                        style: TextStyle(color: Colors.white),
                        value: dropDownValue,
                        onChanged: (String? newValue) {
                          setState(() {
                            dropDownValue = newValue!;
                          });
                        },
                        icon: Icon(Icons.arrow_drop_down),
                        items: <String>["Date Posted" , "Most Relevant"].map<DropdownMenuItem<String>>((String value){
                          return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value)
                          );
                        }).toList(),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              child: ListView(
                children: [
                  ListTile(
                    title: Text("LifeStyle Change In Action" , style: TextStyle(color: Colors.white),),
                    subtitle: Text("By Random" , style: TextStyle(color: Colors.white),),
                  ),
                  ListTile(
                    title: Text("Healthy Diet=Healthy Life",style: TextStyle(color: Colors.white),),
                    subtitle: Text("By Random",style: TextStyle(color: Colors.white),),
                  ),
                  ListTile(
                    title: Text("Loose Weight In 6 months",style: TextStyle(color: Colors.white),),
                    subtitle: Text("By Random",style: TextStyle(color: Colors.white),),
                  ),
                  ListTile(
                    title: Text("Yoga and proper diet each day",style: TextStyle(color: Colors.white),),
                    subtitle: Text("By Random",style: TextStyle(color: Colors.white),),
                  ),
                  ListTile(
                    title: Text("Be Consistent",style: TextStyle(color: Colors.white),),
                    subtitle: Text("By Random",style: TextStyle(color: Colors.white),),
                  ),
                  ListTile(
                    title: Text("You are the only owner of your body",style: TextStyle(color: Colors.white),),
                    subtitle: Text("By Random",style: TextStyle(color: Colors.white),),
                  ),
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}
