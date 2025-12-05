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
      home: HomePage());
  }
}

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  var NameList = ["Bhushan", "Shubham", "Rushi", "Ram", "Ravi",];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
        backgroundColor: Colors.purple,
        centerTitle: true,
      ),
      body: Column(
        children: [
          Container(
            height: 400,
            width: 505,
            // color: Colors.red,
            child: ListView(
              children: NameList.map((val) {
                return Center(child: Padding(
                  padding: const EdgeInsets.all(20),
                  child:SingleChildScrollView(
                    child: Container(
                      decoration: BoxDecoration(
                      color: Colors.deepPurpleAccent,
                        borderRadius: BorderRadius.circular(12)
                      ),
                      width: double.infinity,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Center(child: Text(val)),
                      )),
                  ),
                ));
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }
}
