
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "New App",

      theme: ThemeData(shadowColor: Colors.blue),
      home: Screen(),
    );
  }
}

class Screen extends StatelessWidget {
  @override
  build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Home Page"),
        backgroundColor: Colors.deepOrangeAccent,
        centerTitle: true,
        ),

        body:Container(
          child: Container(
              width:300,
              height: 200,
              color:CupertinoColors.darkBackgroundGray,
              child:Stack(
                  children: [
                     Positioned(
                      bottom: 41,
                      left: 41,
          
                       child: Container(
                        height: 100,
                        width: 100,
                        color: Colors.blueGrey,
                       ),
                     )
                  ],
              )
          ),
        ),
    );
  }
}

