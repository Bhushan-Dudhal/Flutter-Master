import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: HomeScreen());
  }
}

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  RangeValues values = RangeValues(0, 1);

  @override
  Widget build(BuildContext context) {
    RangeLabels labels = RangeLabels(
      values.start.toString(),
      values.end.toString(),
    );

    return Scaffold(
      appBar: AppBar(
        title: Text("Range Slider"),
        backgroundColor: Colors.red,
        centerTitle: true,
      ),
      body: Center(
        child: RangeSlider(
          values: values,
          divisions: 20,
          activeColor: Colors.red,
          min: 0,
          max: 100,
          labels: labels,
          onChanged: (newValues) {
            values = newValues;
            print("$newValues");
            print("$labels");
            setState(() {});
          },
        ),
      ),
    );
  }
}


