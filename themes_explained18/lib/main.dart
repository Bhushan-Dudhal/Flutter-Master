import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "App",
      theme: ThemeData(primarySwatch: Colors.blue,

      textTheme: TextTheme(
        headlineLarge: TextStyle(fontSize: 20)
    
      ),
           

      ),
      home: Screen(),
    );
  }
}

class Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        backgroundColor: Colors.pinkAccent,
      ),
      body: Column(
        children: [
          Text("welcome",style:Theme.of(context).textTheme.headlineLarge),
          Text("Core2Web",style:Theme.of(context).textTheme.headlineLarge),
          Text("welcome",style: TextStyle(fontSize: 40,fontFamily: 'FontMain'),),
          Text("welcome",style: TextStyle(fontSize: 22,fontFamily: 'FontMain',fontWeight: FontWeight.bold),),

          ]
      ),

    );
  }
}
