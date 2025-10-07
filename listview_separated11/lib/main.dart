import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "MyApp",

      theme: ThemeData(primarySwatch: Colors.cyan),
      home: Screeen(),
    );
  }
}

class Screeen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
     var arrname = [
      'Bhushan',
      'Bharat',
      'Ravi',
      'Tushar',
      'Anil',
      'Ram',
      'Rahul',
    ];
    return Scaffold(
      appBar: AppBar(
        title: Text("HOme"),
        backgroundColor: Colors.deepPurple,
        centerTitle: true,
      ),
      body: ListView.separated(
        itemBuilder: (context, index) {
          return Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Text(
                      arrname[index],
                      style: TextStyle(
                        fontSize: 21,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        arrname[index],
                        style: TextStyle(
                          fontSize: 11,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  arrname[index],
                  style: TextStyle(fontSize: 21, fontWeight: FontWeight.w500),
                ),
              ),
            ],
          );
        },
        itemCount: arrname.length,
        // reverse: true,
        // scrollDirection: Axis.horizontal,
        separatorBuilder: (context, index) {
          return Divider(height: 50, thickness: 2);
        },
      ),
    );
  }
}
