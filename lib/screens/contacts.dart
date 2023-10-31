import 'package:flutter/material.dart';
import 'package:todo/constants/styles.dart';
import 'package:todo/constants/text_styles.dart';
import 'package:todo/screens/drawer.dart';

class Contacts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      backgroundColor: AppPalette.black,
      body: ListView(
        children: [
          ListTile(
            title: Text(
              'Contacts',
              style: title_drawer_text,
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          ListTile(
            title: Text(
              'John Doe \njohn.doe@example.com',
              style: edit_text_norm,
              textAlign: TextAlign.left,
            ),
          ),
        ],
      ),
    );
  }
}
