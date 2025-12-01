import 'package:flutter/material.dart';

class about extends StatelessWidget {
  var NameForm;

  about(this.NameForm);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("About"),
        backgroundColor: Colors.pinkAccent,
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            Text("Welcome to $NameForm"),
            OutlinedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("Welcome to"),
            ),
          ],
        ),
      ),
    );
  }
}
