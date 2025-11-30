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
        title: Text("Home Page "),
        backgroundColor: Colors.red,
        centerTitle: true,
      ),
      body: Center(
        child: RangeSlider(
          values: values,
          labels: labels,
          onChanged: (newValues) {
            values = newValues;
            setState(() {
              
            });
          },
        ),
      ),
    );
  }
}
