import 'package:flutter/material.dart';
import 'package:todo/constants/styles.dart';
import 'package:todo/screens/drawer.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  //const CustomAppBar({Key? key}) : super(key: key);

  final VoidCallback openDrawerCallback;
  CustomAppBar({required this.openDrawerCallback});

  @override
  Widget build(BuildContext context) {
    return AppBar(
        backgroundColor: AppPalette.black,
        leading:
            //padding: const EdgeInsets.only(left: 16),
            IconButton(
          icon: const Icon(
            Icons.menu,
            color: AppPalette.white,
            size: 30,
          ),
          onPressed: openDrawerCallback,
        ));
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
