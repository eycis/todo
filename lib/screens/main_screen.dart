import 'package:flutter/material.dart';
import 'package:todo/screens/app_bar.dart';
import 'package:todo/screens/search_box.dart';
import 'package:todo/screens/styles.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: black,
      appBar: const CustomAppBar(),
      body: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 15,
        ),
        child: const Column(
          children: [
            SearchBox(),
            // ...TodoItem(),
          ],
        ),
      ),
    );
  }
}
