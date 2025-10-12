import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'new app',

      theme: ThemeData(primarySwatch: Colors.grey),
      home: Screen(),
    );
  }
}

class Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("HOme"),
      backgroundColor: Colors.deepOrange,
      ),
      body:Center(
        child: Card(
          shadowColor: Colors.indigoAccent,
          elevation: 10,
          child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text("Hello",style: TextStyle(fontSize: 79),),
        )),
      ),
    );
  }
}
