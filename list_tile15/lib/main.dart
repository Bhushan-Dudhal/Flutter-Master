// void main() {
//   runApp(TwoScreen());
// }

// class TwoScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'datastore',
//       theme: ThemeData(primarySwatch: Colors.blueGrey),
//       home: DashbordS(),
//     );
//   }
// }

// class DashbordS  extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text("Home"), backgroundColor: Colors.pinkAccent),

//      
//   }
// }

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
       title: "App",
       theme: ThemeData(
        primarySwatch: Colors.deepPurple
       ),

       home: Screen(),
    );
  }
}


class Screen extends StatelessWidget{

  @override

  Widget build(BuildContext contex){
  var arrname = ['Bhushan', 'Bharat', 'Ravi', 'Tushar', 'Anil', 'Ram', 'Rahul','vishal'];

    return Scaffold(
        appBar: AppBar(title: Text("Home"),
        backgroundColor: Colors.indigoAccent,
        centerTitle: true
        ),

 body: ListView.separated(
        itemBuilder: (context, index) {
          return ListTile(

  leading: Text('${index+1})'),
  title: Text(arrname[index]),
  subtitle: Text('Number'),
  trailing: Icon(Icons.add),

          );
        },
        itemCount: arrname.length,
        // reverse: true,
        // scrollDirection: Axis.horizontal,
        separatorBuilder: (context, index) {
          return Divider(height: 20, thickness: 2);
        },
      ),
    );

  }
}