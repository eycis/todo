import 'package:flutter/material.dart';
import 'screens/main_screen.dart';
import 'package:todo/screens/drawer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: MainScreen(),
          drawer: MyDrawer(),
        ));
  }
}
