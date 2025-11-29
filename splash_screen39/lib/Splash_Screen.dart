import 'dart:async';

import 'package:flutter/material.dart';
import 'package:splash_screen39/HomePage.dart';

class Splash_Screen extends StatefulWidget {
  const Splash_Screen({super.key});

  @override
  State<Splash_Screen> createState() => _Splash();
}

class _Splash extends State<Splash_Screen> {
  @override
  void initState() {
    super.initState();
    {
      Timer(Duration(seconds: 2), () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (Context) => HomePage()),
        );
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.pinkAccent,
        child: Center(
          child: Text(
            "Classic",
            style: TextStyle(fontSize: 21, color: Colors.white),
          ),
        ),
      ),
    );
  }
}
