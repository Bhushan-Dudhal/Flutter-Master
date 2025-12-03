import 'package:flutter/material.dart';

class NextImg extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Hero(tag: "backround",
         child: Image.asset("assets/images/life.jpeg")),
      ),
    );
  }
}
