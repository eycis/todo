import 'package:flutter/material.dart';
import 'package:todo/screens/styles.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({Key? key}) : super(key: key);

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
        Container(
          padding: const EdgeInsets.only(left: 16),
          child: const Icon(
            Icons.menu,
            color: white,
            size: 30,
          ),
        ),
        const Spacer(),
        Container(
          padding: const EdgeInsets.only(top: 8),
          child: const Text(
            'ToDo List',
            style: TextStyle(
              color: white,
              fontSize: 24,
            ),
          ),
        ),
        const Spacer(),
        Container(
          padding: const EdgeInsets.only(right: 16),
          child: const Icon(
            Icons.add,
            color: white,
            size: 30,
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
