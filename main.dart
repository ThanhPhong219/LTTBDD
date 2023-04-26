import 'package:flutter/material.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner : false,
      home: Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: AppBar(
          toolbarHeight: 70,
          backgroundColor: Colors.grey[200],
          elevation: 0,
          leading : Image.asset("assets/images/hamburger.png"),
          actions: [
          Container(
            decoration: BoxDecoration(
            color: Colors.white,
            shape: BoxShape.circle,

            ),
            margin: EdgeInsets.all(10),
            child: Image.asset("assets/images/SEARCH.png"),
          ),
        ],
      ),
      body: Column(
        children :[
        Row(
          SizedBox(width:15,),
          children :[
          Text("Shop", style : TextStyle(fontSize: 32,letterSpacing: 1),),
          Text("Application", style : TextStyle(fontSize: 32,fontWeight:FontWeight.bold,letterSpacing: 1),
          ],
      ),
        SizedBox(height:20,)
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children:[
            buildFlatButton("home Decore"),
            buildFlatButton("Bath & Body"),
            buildFlatButton("Beauty"),
          ],
      ),
        SizedBox(
          height:20,
        )
        Expanded(
          child: Container(
            color: Colors.white,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(topLeft: Radius.circular(40),),
              boxShadow:[
                BoxShadow(
                  color: Colors.grey[300],
                  spreadRadius: 1,
                  blurRadius:20,
                )
              ]
            )
        ),
        )
      ],
      ),
      ),
    );
}
FlatButton buildFlatButton(String text,{bool isSelected=false}){
  return FlatButton(
            onPressed: (){
              print("Button pressed");
            },
            child: Text(
              text, 
              style: TextStyle(color: isSelected ? Colors.white:Colors.black,
              fontSize:18
              ),
            ),
            shape: StadiumBorder(),
            color: isSelected ? Colors.pink[100]:Colors.grey[400],
          );
}
}
