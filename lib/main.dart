import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo/screens/app_bar.dart';
import 'package:todo/screens/drawer.dart';
import 'package:todo/screens/main_screen.dart';
import 'package:todo/todo_mockups/mockup.dart';

void main() {
  //TODO: můžu tohle vymazat?
  runApp(
    ChangeNotifierProvider(
      create: (context) => ToDo(),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyDrawer(
        body: MainScreen(),
        pageName: 'Home',
      ),
    );
  }
}
