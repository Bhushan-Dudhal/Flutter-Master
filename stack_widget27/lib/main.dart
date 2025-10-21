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
    theme: ThemeData(
      primarySwatch: Colors.cyan
    ),
    home:Screen() ,
    );
  }
}

class Screen extends StatelessWidget{

  @override

  Widget build(BuildContext context){

    return Scaffold(
      appBar: AppBar(title: Text("Home page  Stack Widget"),
      backgroundColor: Colors.redAccent,
      centerTitle: true,
      ),
      body: Stack(
        children: [
          Container(
            height: 200,
            width: 200,
            color: Colors.deepOrange,
          ),
            Container(
            height: 160,
            width: 160,
            color: Colors.pink,
          ),

          Positioned(
            top: 10,
            left: 10,
              child: Container(
              height: 100,
              width: 100,
              color: Colors.purple,
                        ),
            )
        ],
      ),
    );
  }
}

