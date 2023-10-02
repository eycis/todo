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
      home: Scaffold( // TODO(eycis): tohle sem nepatří home by měla být nějaká hlavní stránka ve složce pages respektive presentation/pages
        backgroundColor: Colors.black,
        appBar: buildAppBar(),
        body: Container(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15), // TODO(eycis): tohle ti opatří linter :D (to budou všechny ty hezký modrý chyby)
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

  List<Widget> searchBox() { // TODO(eycis): Tohle už bude nějaký konkrétní widget doporučuju složku presentation/widgets a napříkla search_input.dart zabalit to do stles nebo stfull widgetu
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

  AppBar buildAppBar() { // TODO(eycis): zase konkretní stles widget s stleswidget implements PreferredSizeWidget.... presentation/widgets/appbar/home_appbar.dart nebo whatever: D
    return AppBar(
      backgroundColor: Colors.black,
      title: Text(
        'ToDo List',
        style: TextStyle( // TODO(eycis): používané styly jako barvy text styly atp. vyčlenit do config/constants/palette.dart a config/constants/text_styles.dart
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
