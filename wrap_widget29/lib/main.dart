import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Demo APP",

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
        backgroundColor: Colors.deepPurpleAccent,
        centerTitle: true,
      ),
      body: Container(
        width: double.infinity,
        child: Wrap(
          direction: Axis.horizontal,
          spacing: 11,
          runSpacing: 11,
          alignment: WrapAlignment.spaceEvenly,

          children: [
            Container(height: 70, width: 70, color: Colors.amberAccent),

            Container(height: 70, width: 70, color: Colors.pink),
            Container(height: 70, width: 70, color: Colors.orange),
            Container(height: 70, width: 70, color: Colors.red),
            Container(height: 70, width: 70, color: Colors.purple),

            Container(height: 70, width: 70, color: Colors.amberAccent),

            Container(height: 70, width: 70, color: Colors.pink),
            Container(height: 70, width: 70, color: Colors.orange),
            Container(height: 70, width: 70, color: Colors.red),
            Container(height: 70, width: 70, color: Colors.purple),
          ],
        ),
      ),
    );
  }
}

