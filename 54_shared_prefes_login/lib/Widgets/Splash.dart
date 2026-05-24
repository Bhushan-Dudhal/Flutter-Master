import 'dart:async';

import 'package:shared_prefes_login54/widgets/Home.dart';
import 'package:shared_prefes_login54/widgets/Login.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Splash extends StatefulWidget {
  @override
  State<Splash> createState() => SplashState();
}

class SplashState extends State<Splash> {
  static const String KEYLOGIN = "LOGIN";

  @override
  void initState() {
    super.initState();
    WhereToGo();
   
  }

  @override
  Widget build(BuildContext contect) {
    return Scaffold(
      body: Container(
        color: Colors.purple,
        child: Center(child: Icon(Icons.login, size: 50)),
      ),
    );
  }

  void WhereToGo() async {
    var sharedPrefs = await SharedPreferences.getInstance();

 var isLoggedIn=   sharedPrefs.getBool(KEYLOGIN);
  Timer(Duration(seconds: 4), () {

    if(isLoggedIn!=null){
        if(isLoggedIn){
         Navigator.pushReplacement(
         context,
         MaterialPageRoute(builder: (context) => Home()),
         );

        }else{
           Navigator.pushReplacement(
         context,
         MaterialPageRoute(builder: (context) => Login()),
         );
          
        }
    }else{
        Navigator.pushReplacement(
         context,
         MaterialPageRoute(builder: (context) => Login()),
         );
    }
      
    });
  }
}
