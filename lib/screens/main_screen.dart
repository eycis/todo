import 'package:flutter/material.dart';
import 'package:todo/constants/styles.dart';
import 'package:todo/screens/app_bar.dart';
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
        //physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemBuilder: (BuildContext context, int index) {
          return Card(
            elevation: 3,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            color: grey,
            child: ListTile(
              //title:richText(text:const TextSpan(
              //text: '${todos[index].title} \n',
              //style: ...
              trailing: IconButton(
                icon: Icon(Icons.delete),
                color: red,
                onPressed: () {
                  setState(() {
                    todos.removeAt(index);
                    //přidat smazání i z listu.
                  });
                },
              ),
              title: Text(todos[index].todoText ?? ''),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        elevation: 10,
        backgroundColor: grey,
        child: const Icon(
          Icons.add,
          size: 38,
        ),
      ),
    );
  }
}
