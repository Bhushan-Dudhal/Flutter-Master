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
  var TextCon1 = TextEditingController();
  var TextCon2 = TextEditingController();
  var ans = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
        backgroundColor: Colors.amber,
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                Container(
                  width: 300,
                  child: TextField(
                    keyboardType: TextInputType.number,
                    controller: TextCon1,
                    decoration: InputDecoration(border: OutlineInputBorder()),
                  ),
                ),

                SizedBox(height: 20),
                Container(
                  width: 300,
                  child: TextField(
                    keyboardType: TextInputType.number,

                    controller: TextCon2,
                    decoration: InputDecoration(border: OutlineInputBorder()),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    var no1 = int.parse(TextCon1.text.toString());
                    var no2 = int.parse(TextCon2.text.toString());

                    var add = no1 + no2;

                    ans = "The add of $no1 and $no2 is : $add";
                    setState(() {});
                  },
                  child: Text("add"),
                ),
                ElevatedButton(
                  onPressed: () {
                    var no1 = int.parse(TextCon1.text.toString());
                    var no2 = int.parse(TextCon2.text.toString());

                    var sum = no2 - no1;

                    ans = "The sum of $no1 and $no2 is : $sum";
                    setState(() {});
                  },
                  child: Text("Sub"),
                ),
                ElevatedButton(
                  onPressed: () {
                    var no1 = int.parse(TextCon1.text.toString());
                    var no2 = int.parse(TextCon2.text.toString());
                    var mul = no1 * no2;

                    ans = "the mul of $no1 and $no2 is : $mul";
                    setState(() {});
                  },
                  child: Text("mul"),
                ),
                ElevatedButton(
                  onPressed: () {
                    var no1 = int.parse(TextCon1.text.toString());
                    var no2 = int.parse(TextCon2.text.toString());

                    var div = no1 / no2;

                    ans = "the div of $no1 and $no2 is : $div ";
                    setState(() {

                    });
                  },
                  child: Text(" div"),
                ),
              ],
            ),
            SizedBox(height: 20),
            Text(
              "$ans",
              style: TextStyle(fontSize: 20, color: Colors.blueGrey),
            ),
            // Text("Text $Result"),
          ],
        ),
      ),
    );
  }
}
