import 'package:flutter/material.dart';
// import 'package:screen_data_passing/Profile_Screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blueGrey),
      home: _MyApp(),
    );
  }
}

class _MyApp extends StatefulWidget {
  

  @override
  State<_MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<_MyApp> {


  var names = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
        backgroundColor: Colors.purpleAccent,
        centerTitle: true,
      ),
      body: Center(
        // child: Column(
        //   mainAxisAlignment: MainAxisAlignment.center,
        //   children: [
        //     Text(
        //       "Dashborld Screen",
        //       style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        //     ),
        //     SizedBox(height: 20),
        //     Container(
        //       width: 300,
        //       child: TextField(
        //         controller: names,
        //         decoration: InputDecoration(border: OutlineInputBorder()),
        //       ),
        //     ),
        //     SizedBox(height: 30),
        //     ElevatedButton(
        //       onPressed: () {
        //         var names1 = names.text.toString();
        //         print(names1);

        //         Navigator.push(
        //           context,
        //           MaterialPageRoute(builder: (context) => Profile_Screen(names1)),
        //         );
        //       },
        //       child: Text("Click here "),
        //     ),
        //   ],
        // ),
      ),
    );
  }
}
