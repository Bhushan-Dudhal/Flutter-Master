import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    var arrColor = [
      Colors.blue,
      Colors.pink,
      Colors.orange,
      Colors.purple,
      Colors.green,
      Colors.teal,
      Colors.lime,
      Colors.cyan,
    ];
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("hello"),
          backgroundColor: Colors.pink,
          centerTitle: true,
        ),
        body:Column(
          children: [
            GridView.count(crossAxisCount:4,
            crossAxisSpacing: 2,
            mainAxisSpacing: 3,

               children: [
                  Container(color: arrColor[0]),
                  Container(color: arrColor[1]),
                  Container(color: arrColor[2]),
                  Container(color: arrColor[3]),
                  Container(color: arrColor[4]),
                  Container(color: arrColor[5]),
                  Container(color: arrColor[6]),
                  Container(color: arrColor[7]),
                ],
            ),

            Container(
              height: 100,
            ),

            GridView.extent(maxCrossAxisExtent: 100,

            children: [
               Container(color: arrColor[0]),
                  Container(color: arrColor[1]),
                  Container(color: arrColor[2]),
                  Container(color: arrColor[3]),
                  Container(color: arrColor[4]),
                  Container(color: arrColor[5]),
                  Container(color: arrColor[6]),
                  Container(color: arrColor[7]),
            ],

            ),
          ],
        )
      ),
    );
  }
}

