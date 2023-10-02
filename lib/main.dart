import 'package:flutter/material.dart';
import 'widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: buildAppBar(),
        body: Container(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
          child: Column(children: [
            ...searchBox(),
            //...TodoItem(),
          ]
              //ListView(
              //  children: [Container()],
              //)
              ),
        ),
      ),
    );
  }

  List<Widget> searchBox() {
    return [
      Container(
        padding: EdgeInsets.symmetric(horizontal: 15),
        decoration: BoxDecoration(
            color: Colors.grey, borderRadius: BorderRadius.circular(20)),
        child: TextField(
          decoration: InputDecoration(
            contentPadding: EdgeInsets.only(top: 5, left: 30),
            prefixIcon: Icon(
              Icons.search,
              color: Colors.black,
              size: 20,
            ),
            prefixIconConstraints: BoxConstraints(
              maxHeight: 20,
              maxWidth: 25,
            ),
            border: InputBorder.none,
            hintText: 'Add a new item',
            hintStyle: TextStyle(color: Colors.black),
          ),
        ),
      ),
    ];
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: Colors.black,
      title: Text(
        'ToDo List',
        style: TextStyle(
          color: Colors.white,
          fontSize: 30,
        ),
      ),
      //mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //children: [
      actions: [
        Container(
          padding: EdgeInsets.only(left: 16),
          child: Icon(
            Icons.menu,
            color: Colors.white,
            size: 30,
          ),
        ),
        Spacer(),
        Container(
          padding: EdgeInsets.only(top: 8),
          child: Text(
            'ToDo List',
            style: TextStyle(
              color: Colors.white,
              fontSize: 24,
            ),
          ),
        ),
        Spacer(),
        Container(
          padding: EdgeInsets.only(right: 16),
          child: Icon(
            Icons.add,
            color: Colors.white,
            size: 30,
          ),
        ),
      ],
    );
  }
}
