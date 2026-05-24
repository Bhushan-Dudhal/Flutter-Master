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
      title: "App",
      theme: ThemeData(primarySwatch: Colors.cyan),
      home: Screen(),
    );
  }
}

class Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("welcome "), backgroundColor: Colors.blueGrey),
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(flex: 2, child: Container(height: 100, color: Colors.blue)),
          Expanded(
            flex: 1,

            child: Container(height: 100, color: Colors.deepOrangeAccent),
          ),
          Expanded(
            flex: 2,

            child: Container(height: 100, color: Colors.deepPurple),
          ),
          Expanded(flex: 1, child: Container(height: 100, color: Colors.green)),
        ],
      ),
    );
  }
}
