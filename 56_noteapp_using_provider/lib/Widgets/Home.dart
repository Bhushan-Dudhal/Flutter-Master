import 'package:noteapp_using_provider56/Models/ListMapProvider.dart';
import 'package:noteapp_using_provider56/Widgets/addData.dart';
import 'package:noteapp_using_provider56/Widgets/updateData.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Note's"), centerTitle: true),
      body: Container(
        child: Consumer<Listmapprovider>(
          builder: (context, value, child) {
            var allData = value.getData();
            return allData.isNotEmpty
                ? ListView.builder(
                    itemCount: allData.length,
                    itemBuilder: (_, index) {
                      return ListTile(
                        // tileColor: Colors.purpleAccent,
                        title: Text("${index + 1} ) ${allData[index]['name']}"),
                        subtitle: Text("       ${allData[index]['mobNo']}"),
                        trailing: SizedBox(
                          width: 140,
                          child: Row(
                            children: [
                              IconButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => updatedData(index),
                                    ),
                                  );
                                },
                                icon: Icon(Icons.edit),
                                color: Colors.green,
                              ),

                              IconButton(
                                onPressed: () {
                                  context.read<Listmapprovider>().deleteData(
                                    index,
                                  );
                                },
                                icon: Icon(Icons.delete),
                                color: Colors.red,
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  )
                : Center(child: Text("No Contacts Yet !!"));
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => addData()),
          );
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
