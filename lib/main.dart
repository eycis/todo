import 'package:flutter/material.dart';
import 'screens/main_todo_list.dart';
import 'screens/app_bar.dart';
import 'screens/search_box.dart';

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
          child: const Column(children: [
            SearchBox(),
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
}
