import 'package:flutter/material.dart';
//import 'screens/main_todo_list.dart';
import 'screens/main_screen.dart';
import 'screens/app_bar.dart';
import 'package:todo/model/todo.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainScreen(),
    );
  }
}
