import 'package:flutter/material.dart';
import 'package:todo/screens/styles.dart';

class TodoItem extends StatelessWidget {
  const TodoItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
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
          padding: EdgeInsets.all(0),
          margin: EdgeInsets.symmetric(vertical: 12),
          height: 35,
          width: 35,
          decoration: BoxDecoration(
              color: white, borderRadius: BorderRadius.circular(5)),
          child: IconButton(
            color: white,
            iconSize: 18,
            icon: Icon(Icons.delete),
            onPressed: () {
              print('clicked on onpressed');
            },
          ),
        ),
      ),
    );
  }
}
