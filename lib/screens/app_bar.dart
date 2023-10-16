import 'package:flutter/material.dart';
import 'package:todo/constants/styles.dart';

class CustomAppBar extends StatefulWidget implements PreferredSizeWidget { // TODO(eycis): proč statefull? 
  const CustomAppBar({super.key, required this.listCount});
  final int listCount;

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
        leading:
            //padding: const EdgeInsets.only(left: 16),
            IconButton(
          icon: const Icon(
            Icons.menu,
            color: white,
            size: 30,
          ),
          onPressed: () {},
        )
        //TODO: přidat vysunutí boční lišty při stisku na tlačítko menu.
        );
  }
}
