// import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: "App",
//       theme: ThemeData(primarySwatch: Colors.brown),
//       home: Screen(),
//     );
//   }
// }
// class Screen extends StatelessWidget {
//   @override
//   Widget build(BuildContext contect) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("home"),
//         backgroundColor: Colors.amber,
//         centerTitle: true,
//       ),
//       body:Container(
//         child: Text("Welcome App"),

//       )
//     );
//   }
// }

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
  home: Scaffold(
    appBar: AppBar(title: Text("welcome"),),
  ),
    );
  }
}
