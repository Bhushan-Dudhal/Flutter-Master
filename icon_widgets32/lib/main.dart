import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "App",
      theme: ThemeData(primarySwatch: Colors.blueGrey),
      home: Screen(),
    );
  }
}

class Screen extends StatelessWidget{

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar:  AppBar(title: Text("Home"),
      backgroundColor: Colors.lightBlue,
      centerTitle: true,
      ),
      body:Center(
        child: Icon(
          Icons.play_arrow, size: 50,
          color: Colors.blue,
        ),
      ) ,
    );
  }
}
