import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.red),
      home: Screen(),
    );
  }
}

class Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Home"),
      backgroundColor: Colors.deepPurple,
      centerTitle: true,
      ),
      body: ConstrainedBox(
        constraints: BoxConstraints(
          maxHeight: 200,
          minHeight: 100,
          maxWidth: 200,
          minWidth: 100,
        ),
        child: Text("Hello World Hello World Hello World Hello World Hello World Hello World Hello World Hello World Hello World Hello World Hello World ",style: TextStyle(
          fontSize: 21,
          overflow: TextOverflow.fade
          
          ),),
      ),
    );
  }
}
