import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: " Demo App",
      theme: ThemeData(primarySwatch: Colors.cyan),
      home: Screen(),
    );
  }
}

class Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
        backgroundColor: Colors.indigo,
        centerTitle: true,
      ),
      body: RichText(
        text: TextSpan(
          style: TextStyle(fontSize: 20),
          children: <TextSpan>[
            TextSpan(text: "Hello"),
            TextSpan(
              text: "welcome",
              style: TextStyle(
                fontSize: 22,
                color: Colors.cyanAccent,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
              ),
            ),
            TextSpan(text: "2"),
          ],
        ),
      ),
    );
  }
}