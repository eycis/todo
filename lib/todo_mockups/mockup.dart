class ToDo {
  String? todoText;
  String? title;
  DateTime modifiedTime;

  ToDo(
      {required this.todoText,
      required this.title,
      required this.modifiedTime});

  static List<ToDo> todoList() {
    return [
      ToDo(
        todoText: 'Morning Excercise',
        title: '01',
        modifiedTime: DateTime(2022, 1, 1, 34, 5),
      ),
      ToDo(
          todoText: 'Buy Groceries',
          title: '02',
          modifiedTime: DateTime(2023, 3, 7, 11, 12)),
      ToDo(
          todoText: 'Check Emails',
          title: '03',
          modifiedTime: DateTime(2023, 2, 1, 15, 14)),
      ToDo(
          todoText: 'Team Meeting',
          title: '04',
          modifiedTime: DateTime(2023, 2, 1, 12, 34)),
    ];
  }
}
