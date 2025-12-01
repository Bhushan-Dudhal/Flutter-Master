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
  var _width_ = 200.0;
  Color bgColor = Colors.pink;
  var retval = TextEditingController();
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
                color: bgColor,
                duration: Duration(seconds: 2),
              ),
              SizedBox(height: 20),
              Container(
                width: 300,
                child: TextField(
                  controller: retval,
                  decoration: InputDecoration(
                    label: Text("Enter Value Box"),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              OutlinedButton(
                onPressed: () {
                  if (Flag) {
                    _height_ = 200.0;
                    _width_ = 300.0;
                    Flag = false;
                    bgColor = Colors.purpleAccent;
                    setState(() {});
                  } else {
                    _height_ = 300.0;
                    _width_ = 200.0;
                    bgColor = Colors.red;
                    Flag = true;
                    setState(() {});
                  }
                },
                child: Text("Click"),
              ),
              SizedBox(height: 20),

              OutlinedButton(
                onPressed: () {
                  if (Flag) {
                    var up1 = retval.text.toString();
                    var update = int.parse(up1);
                    print(update);
                    Flag = false;
                  } else {
                    
                    Flag = true;
                  }
                },
                child: Text("Click To Update"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
