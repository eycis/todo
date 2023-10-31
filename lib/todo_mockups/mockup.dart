import 'package:flutter/material.dart';
import 'package:todo/screens/main_screen.dart';
import 'package:provider/provider.dart';
import 'package:todo/constants/randoms.dart';
import 'package:todo/constants/styles.dart';
import 'dart:math';

class ToDo extends ChangeNotifier {
  String? todoText;
  String? title;
  DateTime? modifiedTime;
  Color? notecolor;

  ToDo(
      {this.todoText = '', this.title = '', this.modifiedTime, this.notecolor});

  Color getRandomColor() {
    // return type??
    final Random random = Random();
    return ColorConstants
        .randoms[random.nextInt(ColorConstants.randoms.length)];
  }

  static List<ToDo> todoList() {
    return <ToDo>[
      ToDo(
        todoText: 'Morning Excercise',
        title: '01',
        modifiedTime: DateTime(2022, 1, 1, 34, 5),
        notecolor: const Color(0xFFCCE5FF),
      ),
      ToDo(
        todoText: 'Buy Groceries',
        title: '02',
        modifiedTime: DateTime(2023, 3, 7, 11, 12),
        notecolor: const Color(0xFFD7F9E9),
      ),
      ToDo(
          todoText: 'Check Emails',
          title: '03',
          modifiedTime: DateTime(2023, 2, 1, 15, 14),
          notecolor: const Color(0xFFFFF8E1)),
      ToDo(
          todoText: 'Team Meeting',
          title: '04',
          modifiedTime: DateTime(2023, 2, 1, 12, 34),
          notecolor: const Color(0xFFF5E6CC)),
    ];
  }

  void removeTodo(List<ToDo> todos, int index) {
    todos.removeAt(index);
    notifyListeners();
  }
  //TODO: je tu nutné vždy předávat list todos?

  void addTodo(List<ToDo> todos, String title, String todoText) {
    todos.add(ToDo(
      modifiedTime: DateTime.now(),
      title: title,
      todoText: todoText,
      notecolor: getRandomColor(),
    ));
    notifyListeners();
  }

  void editTodo(
      List<ToDo> todos, int index, String newTitle, String newTodoText) {
    todos[index].title = newTitle;
    todos[index].todoText = newTodoText;
    todos[index].modifiedTime = DateTime.now();
    notifyListeners();
  }
}
