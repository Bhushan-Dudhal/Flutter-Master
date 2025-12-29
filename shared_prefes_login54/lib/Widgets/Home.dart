import 'package:shared_prefes_login54/widgets/Splash.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
        backgroundColor: Colors.redAccent,
        centerTitle: true,
      ),

      body: Container(
        child: Center(
          child: Container(
            width: 300,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                OutlinedButton(
                  onPressed: () async {
                    var prefs = await SharedPreferences.getInstance();
                    var retval = prefs.setBool(SplashState.KEYLOGIN, false);
                    print(retval);

                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(builder: (context) => Login()),
                      // );
                  },
                  child: Text("Click To Back"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
