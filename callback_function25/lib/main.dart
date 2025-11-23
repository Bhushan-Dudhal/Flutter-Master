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
      theme: ThemeData(primarySwatch: Colors.deepOrange),
      home: Screen(),
    );
  }
}

class Screen extends StatelessWidget {
  callBack() {
    print("call me");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Pagee"),
        backgroundColor: Colors.deepPurpleAccent,
        centerTitle: true,
      ),

      body: Center(
        child: ElevatedButton(
          onPressed: () {
            callBack();
          },
          child: Text('Click here'),
        ),
      ),
    );
  }
}