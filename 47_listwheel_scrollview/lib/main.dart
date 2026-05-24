import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ListWeell();
  }
}

class ListWeell extends StatefulWidget {
  @override
  State<ListWeell> createState() => ListWeelState();
}

class ListWeelState extends State<ListWeell> {
  var nameIndex = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
        backgroundColor: Colors.red,
        centerTitle: true,
      ),
      body: ListWheelScrollView(
        itemExtent: 100,
        children: nameIndex
            .map(
              (val) => Container(
                child: Text("$val"),
                width: 400,
                height: 200,
                color: Colors.purpleAccent,
              ),
            )
            .toList(),
      ),
    );
  }
}
