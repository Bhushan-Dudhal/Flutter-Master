import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Basic',

      theme: ThemeData(primarySwatch: Colors.cyan),
      home: Screen(),
    );
  }
}

class Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Circle Avtar"),
        backgroundColor: Colors.lightBlueAccent,
        centerTitle: true,
      ),
      body: Center(
        child: CircleAvatar(
          // backgroundColor: Colors.amber,
          child: Column(
            children: [
              Container(
                height: 70,
                width: 70,
                child: Image.asset('assets/images/logos.jpg'),
              ),
              Text('welcome'),
            ],
          ),
          // backgroundImage: AssetImage('assets/images/image.jpg'),
          // radius: 200,
          // minRadius: 50,
          maxRadius: 50,
        ),
      ),
    );
  }
}
