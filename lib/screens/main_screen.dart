import 'dart:math';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:todo/constants/randoms.dart';
import 'package:todo/constants/styles.dart';
import 'package:todo/screens/app_bar.dart';
import 'package:todo/screens/edit_todo.dart';
import 'package:todo/todo_mockups/mockup.dart';
import 'package:todo/constants/text_styles.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int listCount = 1;

  List<ToDo> todos = ToDo.todoList();

  getRandomColor() {
    // return type??
    Random random = Random();
    return ColorConstants
        .randoms[random.nextInt(ColorConstants.randoms.length)];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppPalette.black,
      drawer: Drawer(
          backgroundColor: AppPalette.black,
          child: ListView(
            children: [
              ListTile(
                title: Text(
                  'Quiz app', // Sem přidejte text nad "item1"
                  style: title_drawer_text,
                  textAlign: TextAlign.center,
                ),
              ),
              const Divider(
                color: AppPalette.white,
                thickness: 2,
                height: 30, // Upravte podle potřeby
              ),
              ListTile(
                title: Text('item1', style: drawer_text),
                onTap: () {},
              )
            ],
          )),
      appBar: CustomAppBar(),
      body: ListView.builder(
        padding: EdgeInsets.only(top: 30),
        itemCount: todos.length,
        //physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemBuilder: (BuildContext context, int index) {
          return Card(
            margin: const EdgeInsets.only(bottom: 20),
            color: todos[index].notecolor,
            elevation: 3,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: ListTile(
                onTap: () async {
                  final result = await Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) =>
                          EditScreen(note: todos[index]),
                    ),
                  );
                  if (result != null) {
                    setState(() {
                      todos[index].todoText = result[1];
                      todos[index].title = result[0];
                      todos[index].modifiedTime = DateTime.now();
                    });
                  }
                },
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
                  color: AppPalette.black,
                  onPressed: () {
                    setState(() {
                      //TODO: přidat confirmation window
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
        onPressed: () async {
          final result = await Navigator.push(
            context,
            MaterialPageRoute(
              builder: (BuildContext context) => EditScreen(),
            ),
          );
          if (result != null) {
            setState(() {
              todos.add(ToDo(
                modifiedTime: DateTime.now(),
                title: result[0],
                todoText: result[1],
                notecolor: getRandomColor(),
              ));
            });
          }
        },
        elevation: 10,
        backgroundColor: AppPalette.grey,
        child: const Icon(
          Icons.add,
          size: 38,
        ),
      ),
    );
  }
}
