import 'package:noteapp_using_provider56/Models/ListMapProvider.dart';
import 'package:flutter/material.dart';
import 'package:noteapp_using_provider56/Widgets/Home.dart';
import 'package:provider/provider.dart';

class updatedData extends StatefulWidget {
  final index;
  updatedData(this.index);

  @override
  State<updatedData> createState() => _updatedDataState(index);
}

class _updatedDataState extends State<updatedData> {
  var index;

  _updatedDataState(this.index);
  var nameController = TextEditingController();

  var noController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    print("updated  $index");
    return Scaffold(
      body: Container(
        child: Center(
          child: Container(
            width: 300,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField(
                  controller: nameController,
                  decoration: InputDecoration(
                    label: Text("Enter Your Name "),
                    prefixIcon: Icon(Icons.update_disabled),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
                SizedBox(height: 22),
                TextField(
                  controller: noController,
                  decoration: InputDecoration(
                    label: Text("Enter Your MobNo"),
                    prefixIcon: Icon(Icons.update_disabled_rounded),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),

                SizedBox(height: 22),
                OutlinedButton(
                  onPressed: () {
                    var name = nameController.text.toString();
                    var no = noController.text.toString();
                    if (name == '' || no == '') {
                    } else {
                      context.read<Listmapprovider>().updateData({
                        "name": name,
                        "mobNo": no,
                      }, index);
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => HomePage()),
                      );
                    }
                  },
                  child: Text("Updated"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
