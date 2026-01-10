import 'package:flutter/material.dart';
import 'package:noteapp_using_provider56/Models/ListMapProvider.dart';
import 'package:noteapp_using_provider56/Widgets/Home.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => Listmapprovider()),
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Demo",

      
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
