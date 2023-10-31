import 'package:flutter/material.dart';
import 'package:todo/constants/styles.dart';
import 'package:todo/constants/text_styles.dart';
import 'package:todo/screens/contacts.dart';
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
            title: Text('My Todos', style: drawer_text),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => MainScreen()));
            },
            leading: const Icon(Icons.assignment),
            iconColor: AppPalette.white,
          ),
          ListTile(
            title: Text('Contacts', style: drawer_text),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Contacts()));
            },
            leading: const Icon(Icons.assignment),
            iconColor: AppPalette.white,
          ),
        ],
      ),
    );
  }
}
