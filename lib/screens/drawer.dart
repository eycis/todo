import 'package:flutter/material.dart';
import 'package:todo/constants/styles.dart';
import 'package:todo/constants/text_styles.dart';
import 'package:todo/main.dart';
import 'package:todo/screens/contacts.dart';
import 'package:todo/screens/main_screen.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key, required this.body, required this.pageName})
      : super(key: key);
  final Widget body;
  final String pageName;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(pageName),
        backgroundColor: AppPalette.black,
      ),
      drawer: Drawer(
        backgroundColor: AppPalette.black,
        child: ListView(
          children: [
            DrawerHeader(
              child: Text("Navigation", style: drawer_text),
            ),
            ListTile(
              title: Text('My Todos', style: drawer_text),
              onTap: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => const MyDrawer(
                            body: MainScreen(), pageName: 'todos')));
              },
              leading: const Icon(Icons.assignment),
              iconColor: AppPalette.white,
            ),
            ListTile(
              title: Text('Contacts', style: drawer_text),
              onTap: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) =>
                            MyDrawer(body: Contacts(), pageName: 'Contact')));
              },
              leading: const Icon(Icons.assignment),
              iconColor: AppPalette.white,
            ),
          ],
        ),
      ),
      body: body,
    );
  }
}
