import 'package:flutter/material.dart';
//import 'package:todo/model/todo.dart';
import 'package:todo/screens/app_bar.dart';
//import 'package:todo/screens/main_todo_list.dart';
import 'package:todo/screens/search_box.dart';
import 'package:todo/screens/styles.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int listCount = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: black,
      appBar: CustomAppBar(listCount: listCount),
      body: ListView.builder(
          shrinkWrap: true,
          itemBuilder: (BuildContext context, int index) {
            return Container(
                color: grey,
                child: ListTile(
                  trailing: Icon(Icons.add),
                  title: Text('note'),
                ));
          },
          itemCount: listCount),
    );
  }
}
