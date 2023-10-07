import 'package:flutter/material.dart';
import 'package:todo/screens/app_bar.dart';
import 'package:todo/screens/styles.dart';

class MainScreen extends StatefulWidget {
  MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int listCount = 1;

  void _incrementListCount(int newCount) {
    setState(() {
      listCount = newCount + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: black,
      appBar: CustomAppBar(
        listCount: listCount,
        onListCountUpdated: _incrementListCount,
      ),
      body: ListView.builder(
          physics: ScrollPhysics(parent: null),
          shrinkWrap: true,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              color: grey,
              child: ListTile(
                trailing: Icon(Icons.add),
                title: Text('note'),
              ),
            );
          },
          itemCount: listCount),
    );
  }
}
