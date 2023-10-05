import 'package:flutter/material.dart';
import 'package:todo/model/todo.dart';
import 'package:todo/screens/styles.dart';

class TodoItem extends StatelessWidget {
  // const ToDoItem(this.todo, [Key? key]) : super(key: key);

  //final Todo todo;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10),
      child: ListTile(
        onTap: () {
          print('Clicked on todo item');
        },
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        tileColor: grey,
        leading: const Icon(
          Icons.check_box,
          color: white,
        ),
        title: const Text(
          'first try',
          style: TextStyle(
            // TODO(eycis): vyčlenit jak jsem psal na stránce zpět
            fontSize: 15,
            color: white,
            decoration: TextDecoration.lineThrough,
          ),
        ),
        trailing: Container(
          padding: const EdgeInsets.all(0),
          margin: const EdgeInsets.symmetric(vertical: 12),
          height: 35,
          width: 35,
          decoration: BoxDecoration(
              color: white, borderRadius: BorderRadius.circular(5)),
          child: IconButton(
            color: red,
            iconSize: 18,
            icon: const Icon(Icons.delete),
            onPressed: () {
              print('clicked on onpressed');
            },
          ),
        ),
      ),
    );
  }
}
