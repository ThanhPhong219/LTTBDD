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
          Text("Shop", style : TextStyle(fontSize26),),
          Text("Application", style : TextStyle(fontSize26),fontWeight:FontWeight.bold),
          ],
      ),],),
      ),
    );
}
}
