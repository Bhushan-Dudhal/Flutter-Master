import 'package:bmi_app/Splash_Screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: Splash());
  }
}

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  var wtCon = TextEditingController();
  var ftCon = TextEditingController();
  var inCon = TextEditingController();
  var bgColor;
  var result = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
        backgroundColor: Colors.deepPurple.shade400,
        centerTitle: true,
      ),
      body:Container(
        color: bgColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "BMI Calculator",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 23),
            Center(
              child: Container(
                width: 300,
                child: Column(
                  // spacing: ,
                  children: [
                    TextField(
                      controller: wtCon,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        label: Text("Enter Your Weight"),
                        prefixIcon: Icon(Icons.line_weight),
      
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
      
                    SizedBox(height: 20),
      
                    TextField(
                      controller: ftCon,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        label: Text("Enter Your Height(in Feet)"),
                        prefixIcon: Icon(Icons.height),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
      
                    SizedBox(height: 20),
      
                    TextField(
                      controller: inCon,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.height_outlined),
                        label: Text("Enter Your Height(in Inch)"),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
      
                    SizedBox(height: 25),
      
                    Container(
                      // color: Colors.red,
                      width: 250,
                      height: 40,
                      child: OutlinedButton(
                        onPressed: () {
                          var wt = wtCon.text.toString();
                          var ft = ftCon.text.toString();
                          var inch = inCon.text.toString();
      
                          if (wt != "" && ft != "" && inch != "") {
                            var iWt = int.parse(wt);
                            var iFt = int.parse(ft);
                            var iInch = int.parse(inch);
      
                            var tInch = (iFt * 12) + iInch;
      
                            var tCm = tInch * 2.54;
      
                            var tM = tCm / 100;
      
                            var bmi = iWt / (tM * tM);
      
                            if (bmi > 25) {
                              bgColor.Colors.indigo.shade200;
                            } else if (bmi < 18) {}
                            if (bmi < 25) {
                            } else {}
      
                            setState(() {
                              result =
                                  "Your BMI is : ${bmi.toStringAsFixed(2)}";
                            });
                          } else {
                            result = "Please fill all the required blanks!!";
                            setState(() {});
                          }
                        },
                        child: Text(
                          "Check BMI",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      " $result ",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w300,
                        color: result == "Please fill all the required blanks!!"
                            ? Colors.red
                            : Colors.green,
                      ),
                    ),
                 
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
