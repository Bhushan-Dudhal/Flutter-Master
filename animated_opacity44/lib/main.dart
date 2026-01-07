import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, 
    title: "animated App",
    home: HomePage());
  }
}

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  var op = 0.0;
  bool flag = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
        backgroundColor: Colors.red,
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AnimatedOpacity(
                curve: Curves.bounceOut,
                child: Container(
                  width: 200,
                  height: 200,
                  color: Colors.deepOrange,
                ),

                opacity: op,

                duration: Duration(seconds: 2),
              ),

              SizedBox(height: 22),

              OutlinedButton(
                onPressed: () {
                  if (flag) {
                    op = 1.0;
                    flag = false;
                    setState(() {});
                  } else {
                    op = 0.0;
                    flag = true;
                    setState(() {});
                  }
                },
                child: Text("Click"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
