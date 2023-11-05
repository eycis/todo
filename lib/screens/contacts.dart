import 'package:flutter/material.dart';
import 'package:todo/constants/styles.dart';
import 'package:todo/constants/text_styles.dart';
import 'package:todo/screens/drawer.dart';

class Contacts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //drawer: MyDrawer(),
      backgroundColor: AppPalette.black,
      body: ListView(
        children: [
          ListTile(
              title: Text(
                'John Doe \njohn.doe@example.com',
                style: drawer_text,
                textAlign: TextAlign.left,
              ),
              contentPadding: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0.0)),
        ],
      ),
    );
  }
}
