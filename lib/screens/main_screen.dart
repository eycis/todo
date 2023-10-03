import 'package:flutter/material.dart';
import 'package:todo/model/todo.dart';
import 'package:todo/screens/app_bar.dart';
import 'package:todo/screens/main_todo_list.dart';
import 'package:todo/screens/search_box.dart';
import 'package:todo/screens/styles.dart';

class MainScreen extends StatelessWidget {
  final List<Todo>? todosList;

  MainScreen({Key? key, this.todosList});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: const CustomAppBar(),
      body: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 15,
        ),
        child: Column(
          children: [
            SearchBox(),
            for (Todo todo in todosList!) TodoItem(),
          ],
        ),
      ),
    );
  }
}
