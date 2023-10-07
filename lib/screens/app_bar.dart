import 'package:flutter/material.dart';
import 'package:todo/screens/styles.dart';
import 'package:todo/screens/main_screen.dart';

class CustomAppBar extends StatefulWidget implements PreferredSizeWidget {
  const CustomAppBar(
      {super.key, required this.listCount, required this.onListCountUpdated});
  final int listCount;
  final Function(int) onListCountUpdated;

  @override
  State<CustomAppBar> createState() => _CustomAppBarState();

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class _CustomAppBarState extends State<CustomAppBar> {
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
            child: IconButton(
                icon: const Icon(
                  Icons.add,
                  color: white,
                  size: 30,
                ),
                onPressed: () {
                  widget.onListCountUpdated(widget.listCount);
                })),
      ],
    );
  }
}
