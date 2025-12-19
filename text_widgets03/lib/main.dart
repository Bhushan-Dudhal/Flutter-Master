import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Text Widget",
      theme: ThemeData(primarySwatch: Colors.cyan),
      home: _MyApp(),
    );
  }
}

class _MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Home"), backgroundColor: Colors.blueGrey),

      body: Text(
        "Welcome to Flutter",
        style: TextStyle(fontSize: 25, color: Colors.black),
      ),
    );
  }
}
