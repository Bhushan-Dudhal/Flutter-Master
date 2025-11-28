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

      theme: ThemeData(primarySwatch: Colors.amber),

      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePage();
}

class _HomePage extends State<HomePage> {
  var count = -1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
        backgroundColor: Colors.cyan,
        centerTitle: true,
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("$count", style: TextStyle(fontSize: 22)),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    count++;
                    setState(() {});
                  },
                  child: Text(
                    "Increment",
                    style: TextStyle(color: Colors.amber),
                  ),
                ),
                SizedBox(width: 20),

                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      count--;

                      if (count == -1) {
                        count = 0;
                      }
                    });
                  },
                  child: Text(
                    "Increment",
                    style: TextStyle(color: Colors.amber),
                  ),
                ),
                SizedBox(width: 20),

                ElevatedButton(
                  onPressed: () {
                    count = 0;
                    setState(() {});
                  },
                  child: Text(
                    "Increment",
                    style: TextStyle(color: Colors.amber),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}