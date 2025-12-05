import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: HomePage());
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(""),
      backgroundColor: Colors.deepOrange,
      centerTitle: true,
      ),
      body: Container(
           decoration: BoxDecoration(
            gradient: LinearGradient(
              colors:[
                // Colors.purple.shade300,
                // Colors.pink.shade300,
                // Colors.green
                Color(0xFFf83600)
              ]
            )
          ),
      ),
    );
  }
}
