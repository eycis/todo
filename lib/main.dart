import 'package:flutter/material.dart';
import 'pages/widgets.dart';
import 'pages/app_bar.dart';

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
        // TODO(eycis): tohle sem nepatří home by měla být nějaká hlavní stránka ve složce pages respektive presentation/pages
        backgroundColor: Colors.black,
        appBar: CustomAppBar(),
        body: Container(
          padding: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical:
                  15), // TODO(eycis): tohle ti opatří linter :D (to budou všechny ty hezký modrý chyby)
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
    // TODO(eycis): Tohle už bude nějaký konkrétní widget doporučuju složku presentation/widgets a napříkla search_input.dart zabalit to do stles nebo stfull widgetu
    return [
      Container(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        decoration: BoxDecoration(
            color: Colors.grey, borderRadius: BorderRadius.circular(20)),
        child: const TextField(
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
}
