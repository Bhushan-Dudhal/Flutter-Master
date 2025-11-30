// import 'package:flutter/material.dart';

// class Profile_Screen extends StatelessWidget {
//   // const Profile_Screen({super.key});

//   var nameFormHome;

//   Profile_Screen(this.nameFormHome);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Profile Screen"),
//         backgroundColor: Colors.deepOrangeAccent,
//         centerTitle: true,
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Text(
//               "Welcome to Profile Screen ",
//               style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
//             ),
//             SizedBox(height: 25),
//             ElevatedButton(
//               onPressed: () {
//                 Navigator.pop(context);
//               },
//               child: Text("Exit"),
//             ),
//             SizedBox(height: 20),
//             Text(
//               "Welcome to $nameFormHome",
//               style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
