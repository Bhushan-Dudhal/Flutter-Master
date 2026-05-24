
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  State createState() {
    return _MyApp();
  }
}

class _MyApp extends State {
  @override
  Widget build(BuildContext context) {
    var time = DateTime.now();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: Text("App"), backgroundColor: Colors.amber,
        centerTitle: true,
        ),

        body: Center(
          child: Container(
            width: 200,
            height: 200,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'current Time: ${DateFormat('yQQQQ').format(time)}',
                  style: TextStyle(fontSize: 25),
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {});
                  },
                  child: Text("App"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}