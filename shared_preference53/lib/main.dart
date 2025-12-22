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
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      title: "Demo",

      home: HomePage(),
    
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => HomePAgeState();
}

class HomePAgeState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Home Page"),
      backgroundColor: Colors.deepPurple,
      centerTitle: true,
      ),
      body: Center(
        child: Container(
          child: Column(
            children: [
               AnimatedCrossFade(firstChild: Container(
                color: Colors.pink,
                width: 300,
                height: 300,
               ), secondChild: Image.network(""), crossFadeState:CrossFadeState.showFirst , duration: Duration(seconds:3 ))
            ],
          ),
        ),
      ),
    );
  }
}
