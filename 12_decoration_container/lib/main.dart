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
      theme: ThemeData(primarySwatch: Colors.pink),
      home: Screen(),
    );
  }
}

class Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        backgroundColor: Colors.lightBlueAccent,
        centerTitle: true,
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Center(
          child: Container(
            width: 200,
            height: 200,
            // color: Colors.grey,
            decoration: BoxDecoration(
              color: Colors.amberAccent,
              // borderRadius: BorderRadius.only(topLeft:Radius.circular(20),bottomRight:Radius.circular(20) )
              borderRadius: BorderRadius.circular(30),
              border: Border.all(width: 2, color: Colors.black87),
              boxShadow: [
                BoxShadow(
                  blurRadius: 22,
                  color: Colors.deepPurpleAccent,
                  spreadRadius: 1,
                ),
              ],
              // shape: BoxShape.circle
            ),
          ),
        ),
      ),
    );
  }
}
