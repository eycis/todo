import 'dart:math';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:todo/constants/styles.dart';
import 'package:todo/screens/app_bar.dart';
import 'package:todo/screens/drawer.dart';
import 'package:todo/screens/edit_todo.dart';
import 'package:todo/todo_mockups/mockup.dart';
import 'package:todo/constants/text_styles.dart';
import 'package:todo/screens/drawer.dart';
import 'package:provider/provider.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int listCount = 1;

  List<ToDo> todos = ToDo.todoList();

  @override
  Widget build(BuildContext context) {
    return Consumer<ToDo>(
        builder: (context, value, child) => Scaffold(
              backgroundColor: AppPalette.black,
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
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
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
                            final todo = context.read<ToDo>();
                            todo.editTodo(todos, index, result[0], result[1]);
                          }
                          ;
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
                            'Edited: ${DateFormat('EEE MMM d, yyyy h:mm a').format(todos[index].modifiedTime!)}',
                            style: datetime,
                          ),
                        ),
                        trailing: IconButton(
                            icon: Icon(Icons.delete),
                            color: AppPalette.black,
                            onPressed: () {
                              //TODO: přidat confirmation window

                              final ToDo todo = context.read<ToDo>();
                              todo.removeTodo(todos, index);
                              ;
                            }),
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
                    final ToDo todo = context.read<ToDo>();
                    todo.addTodo(todos, result[0], result[1]);
                  }
                },
                elevation: 10,
                backgroundColor: AppPalette.grey,
                child: const Icon(
                  Icons.add,
                  size: 38,
                ),
              ),
            ));
  }
}
