import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: "Demo",
     theme: ThemeData( 
      primarySwatch: Colors.deepOrange
     ),
     home: Scrren(),
    );
  }
}

class  Scrren  extends  StatelessWidget{

  @override

  Widget build(BuildContext context){
    return Scaffold(
      body: Center(
        child: InkWell(
          // onLongPress: () {
          //   print("onLongPress call");
          // },
          onLongPress: () {
            print('onLongPress');
          },

          onDoubleTap: () {
            print('onDoubleTap call');
          },

          onTap: () {
            print('onTap call');
          },

          child: Container(
            width: 200,
            height: 200,
             color: Colors.amber,
            child:Center(

               child: InkWell(
                onTap: () {
            print('onTap call 1');
          },
                 child:Text('Click here',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,),)
               )
            ),

             ),
        ),
      ),
    );
  }
}
