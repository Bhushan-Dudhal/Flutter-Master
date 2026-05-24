import 'dart:async';

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
      title:"Demo App",
      debugShowCheckedModeBanner: false, 
      home: HomePage());
  }
}

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  bool isFirst = true;

  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 2), () {
      reload();
    });
  }

  void reload() {
    setState(() {
      isFirst = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
        backgroundColor: Colors.deepPurpleAccent,
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          width: 300,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AnimatedCrossFade(
                firstChild: Container(
                  width: 200,
                  height: 200,
                  color: Colors.greenAccent,
                ),
                sizeCurve: Curves.decelerate,
                secondChild: Image.asset(
                  'assets/images/life.jpeg',
                  height: 100,
                  width: 100,
                ),

                crossFadeState: isFirst
                    ? CrossFadeState.showFirst
                    : CrossFadeState.showSecond,

                duration: Duration(seconds: 2),
              ),
              SizedBox(height: 22),
              OutlinedButton(
                onPressed: () {
                  if (isFirst) {
                    isFirst = false;
                    setState(() {
                      
                    });
                  } else {
                    setState(() {
                      
                    });
                    isFirst = true;
                  }
                },
                child: Text("Click"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
