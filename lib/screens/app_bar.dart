import 'package:flutter/material.dart';
import 'package:todo/screens/styles.dart';
import 'package:todo/screens/main_screen.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final int listCount;

  CustomAppBar({Key? key, required this.listCount});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: black,
      title: const Text(
        'ToDo List',
        style: TextStyle(
          color: white,
          fontSize: 30,
        ),
      ),
      actions: [
        // ...
        IconButton(
          icon: const Icon(
            Icons.add,
            color: white,
            size: 30,
          ),
          onPressed: () {
            // Použití listCount
            setState(() {
              listCount = listCount + 1; // Aktualizace listCount
            });
          },
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
