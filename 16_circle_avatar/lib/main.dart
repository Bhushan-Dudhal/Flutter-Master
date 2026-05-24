import 'package:flutter/material.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "App",
      theme: ThemeData(primarySwatch: Colors.indigo),
      home: Dashbord(),
    );
  }
}

class Dashbord extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Home"),
      backgroundColor: Colors.lightGreen,),

      body: Container(child: Text("welcome to Flutter",style: TextStyle(fontSize: 30,
      fontFamily: 'FontMain'
      ),)),
    );
  }
}
