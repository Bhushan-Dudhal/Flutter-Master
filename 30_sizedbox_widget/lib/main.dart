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
      title: "App",
      theme: ThemeData(primarySwatch: Colors.brown),
      home: Screen(),
    );
  }
}

class Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("App"),
        backgroundColor: Colors.cyan,
        centerTitle: true,
      ),

      // body: Center(
      //   child: ConstrainedBox(
      //     constraints: BoxConstraints(
      //       minHeight:40,
      //       minWidth: 200,
      //       maxHeight: 60,
      //       maxWidth: 300,
      //     ),
      //     child: SizedBox.expand(
      body: Wrap(
        direction: Axis.vertical,

        children: [
          SizedBox.square(
            dimension: 100,

            child: ElevatedButton(onPressed: () {}, child: Text("Click ")),
          ),

          SizedBox(height: 100, width: 200),

          SizedBox.square(
            dimension: 100,

            child: ElevatedButton(onPressed: () {}, child: Text("Click ")),
          ),

          SizedBox(height: 100, width: 200),

          SizedBox.square(
            dimension: 100,

            child: ElevatedButton(onPressed: () {}, child: Text("Click ")),
          ),
        ],
      ),
    );
  }
}
