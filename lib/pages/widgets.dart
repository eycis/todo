import 'package:flutter/material.dart';

class TodoItem extends StatelessWidget {
  const TodoItem({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO(eycis): tady se mi líbí že jsi něco zkoušela oddělit ale zase do presentation/widgets a něco
    return Container(
      child: ListTile(
        onTap: () {
          print('Clicked on todo item');
        },
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        tileColor: Colors.grey,
        leading: const Icon(
          Icons.check_box,
          color: Colors.white,
        ),
        title: const Text(
          'first try',
          style: TextStyle(
            // TODO(eycis): vyčlenit jak jsem psal na stránce zpět
            fontSize: 15,
            color: Colors.white,
            decoration: TextDecoration.lineThrough,
          ),
        ),
        trailing: Container(
          padding: EdgeInsets.all(0),
          margin: EdgeInsets.symmetric(vertical: 12),
          height: 35,
          width: 35,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(5)),
          child: IconButton(
            color: Colors.white,
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
