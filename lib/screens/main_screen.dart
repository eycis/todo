import 'dart:math';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:todo/constants/randoms.dart';
import 'package:todo/constants/styles.dart';
import 'package:todo/screens/app_bar.dart';
import 'package:todo/todo_mockups/mockup.dart';

//TODO: přidat screen pro rozkliknutí todo.
//TODO: přidat edit inputu
class MainScreen extends StatefulWidget {
  MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int listCount = 1;

  List<ToDo> todos = ToDo.todoList();
  List<ToDo> todoList = [];

  void _addDefaultNote() {
    setState(() {
      //TODO: upravit metodu pro přidání todočka
      todos.add(ToDo(
          todoText: 'Default Note',
          title: 'title',
          modifiedTime: DateTime.now()));
      //tady přidat automatické přesunutí kurzoru do inputu.
    });
  }

  getRandomColor() {
    Random random = Random();
    return randoms[random.nextInt(randoms.length)];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: black,
      //TODO: upravit získávání proměnné listCount.
      appBar: CustomAppBar(listCount: todos.length),
      body: ListView.builder(
        padding: EdgeInsets.only(top: 30),
        itemCount: todos.length,
        //physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemBuilder: (BuildContext context, int index) {
          return Card(
            margin: const EdgeInsets.only(bottom: 20),
            color: getRandomColor(),
            elevation: 3,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: ListTile(
                onTap: () async {},
                title: RichText(
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                  text: TextSpan(
                    text: '${todos[index].title} \n',
                    style: text_title,
                    children: <TextSpan>[
                      TextSpan(
                        text: '${todos[index].todoText} \n',
                        style: text_norm,
                      ),
                    ],
                  ),
                ),
                subtitle: Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Text(
                    'Edited: ${DateFormat('EEE MMM d, yyyy h:mm a').format(todos[index].modifiedTime)}',
                    style: datetime,
                  ),
                ),
                trailing: IconButton(
                  icon: Icon(Icons.delete),
                  color: red,
                  onPressed: () {
                    setState(() {
                      todos.removeAt(index);
                    });
                  },
                ),
              ),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _addDefaultNote();
        },
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
