import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.purple),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var nameController = TextEditingController();

  var nameVal = "";

  @override
  void initState() {
    super.initState();
    getValue();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
        backgroundColor: Colors.purpleAccent,
        centerTitle: true,
      ),
      body: Container(
        child: Center(
          child: Container(
            width: 300,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField(
                  controller: nameController,
                  decoration: InputDecoration(
                    label: Text("Enter Data"),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ),
                SizedBox(height: 22),
                OutlinedButton(
                  onPressed: () async {
                    var name = nameController.text.toString();

                    var perf = await SharedPreferences.getInstance();

                    perf.setString("name", name);
                    setState(() {
                      
                    });
                  },
                  child: Text("Click"),
                ),
                SizedBox(height: 22),
                Text("$nameVal"),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void getValue() async {
    var perfs = await SharedPreferences.getInstance();

    var getName = perfs.getString("name");

    nameVal = getName??"No Value Saved";
    setState(() {
      
    });
  }
}
