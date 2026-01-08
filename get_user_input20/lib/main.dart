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
      title: "Basic App",

      theme: ThemeData(primarySwatch: Colors.orange),
      home: Screen(),
    );
  }
}

class Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var eimailText = TextEditingController();
    var passText = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
        backgroundColor: const Color.fromARGB(255, 195, 31, 121),
        centerTitle: true,
      ),

      body: Center(
        child: Container(
          width: 300,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                keyboardType: TextInputType.number,
                controller: eimailText,
                // enabled: false,
                decoration: InputDecoration(
                  hintText: "Enter Email",
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(color: Colors.green, width: 2),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(color: Colors.red, width: 2),
                  ),
                  disabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(color: Colors.black, width: 2),
                  ),
                  suffixText: "Username Exit",
                  suffixIcon: Icon(Icons.phone_android, color: Colors.black),

                  prefixIcon: Icon(Icons.phone, color: Colors.black),
                ),
              ),
              Container(height: 20),
              TextField(
                obscureText: true,
                obscuringCharacter: '*',
                controller: passText,
                decoration: InputDecoration(
                  hintText: 'Password',
                  // focusedBorder: ,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(color: Colors.deepOrange),
                  ),
                ),
              ),

              ElevatedButton(
                onPressed: () {
                  String uEmail = eimailText.text.toString();
                  String uPass = passText.text;

                  print('$uEmail');
                  print('$uPass');
                },
                child: Text("Login"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
