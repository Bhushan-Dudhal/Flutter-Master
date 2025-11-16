import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Basic App ',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "welcome",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Center(
        child: Container(
          width: 200,
          height: 200,
          color: Colors.blue,
          child: const Center(
            child: Text(
              "WELCOME ",
              style: TextStyle(
                fontSize: 30, // Changed from 300 to 30 for visibility
                color: Colors.blueAccent,
                fontWeight: FontWeight.bold,
                backgroundColor: Color.fromARGB(255, 23, 16, 15),
              ),
            ),
          ),
        ),
      ),
    );
  }
}