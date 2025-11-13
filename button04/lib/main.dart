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
      title: "Button new  app",
      theme: ThemeData(primarySwatch: Colors.cyan),
      home: _MyApp(),
    );
  }
}

class _MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Button"),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {
                print('Text Button');
              }, 
              onLongPress: () {
                print('On Long Press');
              },
              child: Text('Click here'),
            ),
        
        //////////   ElevatedButton   //////////////////////////////
            ElevatedButton(
              onPressed: () {
                print('Elevation Button call');
              },
              child: Text('Elevation Button'),
            ),
        
        /////////////////////////  Outline Button  ////////////////////////////////////
            OutlinedButton(
              onPressed: () {
                print("Outline Button");
              },
              child: Text('Out Line Button'),
            ),
          ],
        ),
      ),
    );
  }
}
