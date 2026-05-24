import 'package:noteapp_using_provider56/Models/ListMapProvider.dart';
import 'package:noteapp_using_provider56/Widgets/Home.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class addData extends StatefulWidget {
  @override
  State<addData> createState() => _addDataState();
}

class _addDataState extends State<addData> {
  var nameController = TextEditingController();

  var noController = TextEditingController();

  var msg = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Container(
            width: 300,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField(
                  keyboardType: TextInputType.name,
                  controller: nameController,
                  decoration: InputDecoration(
                    label: Text("Enter Your Name "),
                    prefixIcon: Icon(Icons.person),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                TextField(
                  keyboardType: TextInputType.number,
                  controller: noController,
                  decoration: InputDecoration(
                    label: Text("Enter Your No"),
                    prefixIcon: Icon(Icons.numbers),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  "$msg",
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w500,
                    color: Colors.red,
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  width: 150,
                  height: 35,
                  child: OutlinedButton(
                    onPressed: () {
                      var name = nameController.text.toString();
                      var no = noController.text.toString();

                      if (name == '' || no == '') {
                        msg = "Please All Field Fill Up ";
                        setState(() {});
                      } else {
                        context.read<Listmapprovider>().addData({
                          "name":name,
                          "mobNo":no
                        });

                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => HomePage()),
                        );
                      }
                    },
                    child: Text("Save"),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
