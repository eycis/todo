class ToDo {
  String? todoText;

  ToDo({required this.todoText});

  static List<ToDo> todoList() {
    return [
      ToDo(todoText: 'Morning Excercise'),
      ToDo(todoText: 'Buy Groceries'),
      ToDo(todoText: 'Check Emails'),
      ToDo(todoText: 'Team Meeting'),
    ];
  }
}
