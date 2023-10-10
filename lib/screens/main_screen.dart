import 'package:flutter/material.dart';
import 'package:todo/screens/app_bar.dart';
import 'package:todo/screens/styles.dart';
import 'package:todo/todo_mockups/mockup.dart';

class MainScreen extends StatefulWidget {
  MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int listCount = 1;

  List<ToDo> todos = ToDo.todoList();
  List<ToDo> todoList = [];

  void _incrementListCount(int newCount) {
    setState(() {
      listCount = newCount + 1;
      _addDefaultNote();
    });
  }

  void _addDefaultNote() {
    setState(() {
      todos.add(ToDo(todoText: 'Default Note'));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: black,
      appBar: CustomAppBar(
        listCount: todos.length,
        onListCountUpdated: _incrementListCount,
      ),
      body: ListView.builder(
        itemCount: todos.length,
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            color: grey,
            child: ListTile(
              trailing: IconButton(
                icon: Icon(Icons.delete),
                onPressed: () {
                  setState(() {
                    todos.removeAt(index);
                  });
                },
              ),
              title: Text(todos[index].todoText ?? ''),
            ),
          );
        },
      ),
    );
  }
}
