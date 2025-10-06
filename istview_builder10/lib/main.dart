

import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{

const MyApp({super.key});


@override
Widget build(BuildContext context){
  return MaterialApp(
    title: "Demo",
    theme: ThemeData(
      primarySwatch: Colors.deepPurple
    ),
    home:Screen() ,
  );
}
}

class Screen extends StatelessWidget{

  @override
  Widget build(BuildContext context){
     var arrname = [
      'Bhushan',
      'Bharat',
      'Ravi',
      'Tushar',
      'Anil',
      'Ram',
      'Rahul',
    ];
    return Scaffold(
      appBar: AppBar(title: Text("Home"),
      backgroundColor: Colors.cyanAccent,
      centerTitle: true,
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Text(
            arrname[index],
            style: TextStyle(fontSize: 21, fontWeight: FontWeight.w500),
          );
        },
        itemCount: arrname.length,
        // reverse: true,
        itemExtent: 100,
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}