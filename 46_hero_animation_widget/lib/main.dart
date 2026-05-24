import 'package:flutter/material.dart';
import 'package:hero_animation_widget46/NextImg.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title:"Basic App",
      home: Heros(),
    );
  }
}

class Heros extends StatefulWidget {
  @override
  State<Heros> createState() => HeroState();
}

class HeroState extends State<Heros> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hero Animation"),
        backgroundColor: Colors.deepPurpleAccent,
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          width: 300,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => NextImg()),
                  );
                },
                child: Hero(
                  tag: "backround",
                  child: Image.asset(
                    "assets/images/life.jpeg",
                    width: 100,
                    height: 100,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
