import 'package:flutter/material.dart';

class ToDo {
  String? todoText;
  String? title;
  DateTime modifiedTime;
  Color notecolor;

  ToDo( // TODO(eycis): constructor pro přehlednost vždy first
      {required this.todoText,
      required this.title,
      required this.modifiedTime,
      required this.notecolor});

  static List<ToDo> todoList() {
    return [ // TODO(eycis): type listu? <ToDo>[....] ??
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
}
