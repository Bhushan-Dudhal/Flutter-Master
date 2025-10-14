import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState(); 
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    var time = DateTime.now();
    return MaterialApp(

      debugShowCheckedModeBanner: false,
      title: "App",
      home: Scaffold(
        appBar: AppBar(title: Text("Home"), backgroundColor: Colors.amber,
        centerTitle: true,
        ),
        body: Center(
          child: Container(
            width: 250,
            height: 250,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Current Time: ${DateFormat('yQQQQ').format(time)}',
                  style: TextStyle(fontSize: 20),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    setState(() {}); 
                  },
                  child: Text("Refresh Time"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
