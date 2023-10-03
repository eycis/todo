import 'package:flutter/material.dart';
//import 'screens/main_todo_list.dart';
import 'screens/main_screen.dart';
import 'package:todo/model/todo.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key});

  final todoslist = Todo.todoList();

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainScreen(todosList: todoslist),
    );
  }
}
