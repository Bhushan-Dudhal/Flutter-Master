import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext contect) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "App",
      theme: ThemeData(primarySwatch: Colors.grey),
      home: Screen(),
    );
  }
}

class Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Custom Widget"),
        backgroundColor: Colors.lightBlue,
        centerTitle: true,
      ),

      body: Container(
        child: Column(
          children: [
            CatItems(),
            Contact(),
            SubCatItem(),

            CatItems(),

            Expanded(
              flex: 1,
              child: Container(
                color: Colors.orange,

                child: ListView.builder(
                  itemBuilder: (context, index) => Container(
                    width: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(11),
                      color: Colors.purpleAccent,
                    ),
                  ),
                  itemCount: 10,
                  scrollDirection: Axis.horizontal,
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                color: Colors.blueGrey,

                // child:  GridView.count(crossAxisCount: (){}),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CatItems extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Container(
        height: 200,
        color: Colors.blue,
        child: ListView.builder(
          itemBuilder: (context, index) => Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              width: 100,
              child: CircleAvatar(backgroundColor: Colors.pink),
            ),
          ),
          itemCount: 10,
          scrollDirection: Axis.horizontal,
        ),
      ),
    );
  }
}

class Contact extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Container(
        height: 200,
        color: Colors.deepPurple,
        child: ListView.builder(
          itemBuilder: (context, index) => Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              leading: CircleAvatar(),
              title: Text('name'),
              subtitle: Text("Mob no"),
              trailing: Icon(Icons.delete),
            ),
          ),
        ),
      ),
    );
  }
}

class SubCatItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Container(
        height: 200,
        color: Colors.deepPurple,
        child: ListView.builder(
          itemBuilder: (context, index) => Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              leading: CircleAvatar(),
              title: Text('name'),
              subtitle: Text("Mob no"),
              trailing: Icon(Icons.delete),
            ),
          ),
        ),
      ),
    );
  }
}
