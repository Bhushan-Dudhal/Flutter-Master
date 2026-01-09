import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_management_counter55/models/CounterProvider.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
        backgroundColor: Colors.greenAccent,
        centerTitle: true,
      ),
      body: Center(
        child: Consumer(
          builder: (context, value, child) {
            return Text('${context.watch<CounterProvider>().count}',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),);
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.read<CounterProvider>().Increement();
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
