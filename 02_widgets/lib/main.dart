import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome To Flutter',
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

    appBar: AppBar(title: Text("Welcome"),),

    body:  Text("WELCOME ", style: TextStyle(
         fontSize: 300,
             color: Colors.blueAccent,
             fontWeight: FontWeight.bold,
              backgroundColor: const Color.fromARGB(255, 23, 16, 15)
            ),) ,

       );
  }
}
