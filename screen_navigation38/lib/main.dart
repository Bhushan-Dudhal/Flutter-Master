
import 'package:flutter/material.dart';
import 'package:screen_navigation/HomePage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.amber),
      home: HomePage(),
    );
  }
}




class ScreenPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Home Page"),
        backgroundColor: Colors.teal,
        centerTitle: true,
        ),
        body: Text("Hello push")
    );
  }
}
