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
      title: "New App",

      theme: ThemeData(primarySwatch: Colors.blue),
      home: Screen(),
    );
  }
}

class Screen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("HOME"),
        backgroundColor: const Color.fromARGB(255, 254, 0, 85),
      ),

      // body: Padding(
      //   // padding: EdgeInsets.all(30),
      //   // padding: EdgeInsets.only(left: 12),
      //   padding: EdgeInsets.only(top: 19,left: 30),
      //   child: Text("Hello",style: TextStyle(fontSize: 30),),
      // ),
      body: Container(

        color: Colors.amber,
        // margin: EdgeInsets.all(20),
        margin: EdgeInsets.only(left: 40, top: 100),

        child: Padding(

          // padding: EdgeInsets.all(30),
          padding: EdgeInsets.only(top: 30,left: 31),

          child: Text("Heloo ", style: TextStyle(fontSize: 30)),
        ),
      ),
    );
  }
}
