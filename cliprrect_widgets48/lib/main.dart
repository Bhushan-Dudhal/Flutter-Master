import 'package:flutter/cupertino.dart';
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
      title: "Demo App",
      home: Screen());
  }
}

class Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Home Page"),
      backgroundColor: Colors.deepPurpleAccent,
      centerTitle: true,
      ),
      body: Center(
        child: Container(
          child: Column(
            children: [
              ClipRRect(
                
                // borderRadius: BorderRadius.only(topLeft: Radius.circular(22),bottomLeft: Radius.circular(22)),
                borderRadius: BorderRadius.only(topLeft: Radius.circular(20)),
                child: Image.asset("assets/images/image.jpg"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
