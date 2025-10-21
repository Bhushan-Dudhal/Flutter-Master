import 'package:custom_widget28/widget/rounded_btn.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "App",
      theme: ThemeData(primarySwatch: Colors.lightGreen),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Creating a Custom Widget"),
          backgroundColor: Colors.greenAccent,
          centerTitle: true,
        ),
        body: Center(
          child: Container(
            width: 100,
            child: RoundedButton(
              btnName: 'Click',
              icon: Icon(Icons.lock),
              callBack: () {
                print("call");
              },
            ),
          ),
        ),
      ),
    );
  }
}