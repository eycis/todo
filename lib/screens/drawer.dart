import 'package:flutter/material.dart';
import 'package:todo/constants/styles.dart';
import 'package:todo/constants/text_styles.dart';
import 'package:todo/screens/main_screen.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: AppPalette.black,
      child: ListView(
        children: [
          ListTile(
            title: Text(
              'Todo',
              style: title_drawer_text,
              textAlign: TextAlign.center,
            ),
          ),
          const Divider(
            color: AppPalette.white,
            thickness: 2,
            height: 30,
          ),
          ListTile(
            //TODO: button z celého listtile.
            title: Text('My Todos', style: drawer_text),
            leading: IconButton(
              icon: Icon(Icons.assignment),
              color: AppPalette.white,
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
        ],
      ),
    );
  }
}
