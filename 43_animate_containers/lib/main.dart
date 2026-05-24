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
      theme: ThemeData(primarySwatch: Colors.red),
      title: "Demo App",
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  var _height_ = 300.0;
  var _width_ = 250.0;
  Color bgColor = Colors.pink;
  Decoration MyDec = BoxDecoration(
    borderRadius: BorderRadius.circular(20),
    color: Colors.purpleAccent,
  );
  bool Flag = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
        backgroundColor: Colors.orange,
        centerTitle: true,
      ),

      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AnimatedContainer(
                width: _width_,
                height: _height_,
                // color: bgColor,
                curve: Curves.easeOutCubic,
                decoration: MyDec,
                duration: Duration(seconds: 2),
              ),
              SizedBox(height: 22),
              OutlinedButton(
                onPressed: () {
                  if (Flag) {
                    _height_ = 200.0;
                    _width_ = 300.0;
                    Flag = false;
                    // bgColor = Colors.purpleAccent;
                    MyDec = BoxDecoration(
                      borderRadius: BorderRadius.circular(22),
                      color: Colors.redAccent,
                    );
                    setState(() {});
                  } else {
                    _height_ = 300.0;
                    _width_ = 200.0;
                    bgColor = Colors.red;
                    MyDec = BoxDecoration(
                      borderRadius: BorderRadius.circular(14),
                      color: Colors.deepOrangeAccent,
                    );
                    Flag = true;
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
