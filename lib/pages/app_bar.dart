import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.black,
      title: const Text(
        'ToDo List',
        style: TextStyle(
          color: Colors.white,
          fontSize: 30,
        ),
      ),
      actions: [
        Container(
          padding: const EdgeInsets.only(left: 16),
          child: const Icon(
            Icons.menu,
            color: Colors.white,
            size: 30,
          ),
        ),
        const Spacer(),
        Container(
          padding: const EdgeInsets.only(top: 8),
          child: const Text(
            'ToDo List',
            style: TextStyle(
              color: Colors.white,
              fontSize: 24,
            ),
          ),
        ),
        const Spacer(),
        Container(
          padding: const EdgeInsets.only(right: 16),
          child: const Icon(
            Icons.add,
            color: Colors.white,
            size: 30,
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
