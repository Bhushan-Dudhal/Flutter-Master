import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_management_counter55/models/CounterProvider.dart';
import 'package:state_management_counter55/widgets/Home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "state management",
      home:ChangeNotifierProvider(create: (context)=>CounterProvider(),
      child: Home(),
      ),
    );
  }
}
