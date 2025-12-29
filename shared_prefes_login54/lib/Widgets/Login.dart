import 'package:shared_prefes_login54/widgets/Home.dart';
import 'package:shared_prefes_login54/widgets/Splash.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Login extends StatefulWidget {
  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  var emailController = TextEditingController();

  var passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Container(
            width: 300,
            // decoration: BoxDecoration(
            //   border: Border.all(color: Colors.black,width: 1,)
            // ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.person, size: 50),
                SizedBox(height: 30),
                TextField(
                  controller: emailController,
                  decoration: InputDecoration(
                    label: Text("Enter Your Email"),
                    prefixIcon: Icon(Icons.email),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(17),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                TextField(
                  controller: passwordController,
                  decoration: InputDecoration(
                    label: Text("Enter Your Password"),
                    prefixIcon: Icon(Icons.password),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  width: 150,
                  child: OutlinedButton(
                    onPressed: () async {

                      var sharedPrefs = await SharedPreferences.getInstance();

                      sharedPrefs.setBool(SplashState.KEYLOGIN, true);
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Home()),
                        );

                      // if (email == '' && pass == '') {
                      // } else {
                      // }
                    },
                    child: Text("Login !"),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
