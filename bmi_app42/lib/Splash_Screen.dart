import 'dart:async';

import 'package:bmi_app/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Splash extends StatefulWidget {
  @override
  State<Splash> createState() => SplashState();
}

class SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    {
      Timer(Duration(seconds: 10), () {
        Navigator.pushReplacement(context,MaterialPageRoute(builder: (context)=>HomePage()));
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

    body: Container(
      color: Colors.purple,
      child: Center(child: CircleAvatar(
        radius: 50,
        
        backgroundImage: NetworkImage("https://play-lh.googleusercontent.com/YQbgwquXAt10iC-NHmJo73J8AiWemGtHciRZ93CjQ1c3_E7arH1lequ0CF0o3fzuYEY"),
      ),),
    ),


    );
  }
}
