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
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Screen(),
    );
  }
}

class Screen extends StatelessWidget {

  @override

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
        backgroundColor: Colors.blueAccent,
        centerTitle: true,
      ),
       body:Container(
        width: 400,
        height: 400,
       child:   Column(
        //mainAxisAlignment:MainAxisAlignment.start,

     // mainAxisAlignment:MainAxisAlignment.spaceAround ,
     // crossAxisAlignment: CrossAxisAlignment.stretch,
     // crossAxisAlignment: CrossAxisAlignment.start,

      mainAxisAlignment:MainAxisAlignment.spaceEvenly ,
      // mainAxisAlignment:MainAxisAlignment.spaceBetween ,
     // mainAxisAlignment:MainAxisAlignment.center ,
     // mainAxisAlignment:MainAxisAlignment.end ,
     // mainAxisAlignment:MainAxisAlignment.start ,
     // crossAxisAlignment:CrossAxisAlignment.end,
     // crossAxisAlignment:CrossAxisAlignment.end,

        children: [

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
          Text("A",style: TextStyle(fontSize: 30),),
          Text("B",style: TextStyle(fontSize: 30),),
          Column(
       children: [
        ElevatedButton(onPressed: (){}, child: Text('click')),
        ElevatedButton(onPressed: (){}, child: Text('click'))

       ],
          ),
          Text("C",style: TextStyle(fontSize: 30),),
          Text("D",style: TextStyle(fontSize: 30),),
          Text("E",style: TextStyle(fontSize: 30),),
          // Text("F",style: TextStyle(fontSize: 30),),
          ElevatedButton(onPressed :(){}, child: Text('Click'))
      ],
          ),
          Text("A",style: TextStyle(fontSize: 30),),
          Text("B",style: TextStyle(fontSize: 30),),
          Text("C",style: TextStyle(fontSize: 30),),
          Text("D",style: TextStyle(fontSize: 30),),
          Text("E",style: TextStyle(fontSize: 30),),
          // Text("F",style: TextStyle(fontSize: 30),),
          ElevatedButton(onPressed :(){}, child: Text('Click'))

        ],
      ),
      )
    

//       Container(
//         // width: 400,
//         height: 300,
//        child:   Row(
//         // mainAxisAlignment:MainAxisAlignment.spaceAround ,
//         // mainAxisAlignment:MainAxisAlignment.spaceEvenly ,
//         // mainAxisAlignment:MainAxisAlignment.spaceBetween ,
//         // mainAxisAlignment:MainAxisAlignment.center ,
//         // mainAxisAlignment:MainAxisAlignment.end ,
//         // mainAxisAlignment:MainAxisAlignment.start ,
//       // crossAxisAlignment:CrossAxisAlignment.end,
//       crossAxisAlignment:CrossAxisAlignment.end,

//         children: [
//           Text("A",style: TextStyle(fontSize: 30),),
//           Text("B",style: TextStyle(fontSize: 30),),
//           Text("C",style: TextStyle(fontSize: 30),),
//           Text("D",style: TextStyle(fontSize: 30),),
//           Text("E",style: TextStyle(fontSize: 30),),
//           Text("F",style: TextStyle(fontSize: 30),),
//           Text("J",style: TextStyle(fontSize: 30),),
//           ElevatedButton(onPressed :(){}, child: Text('Click'))

//         ],
//       ),
//       )
    );
  }
}










 