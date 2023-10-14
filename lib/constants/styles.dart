import 'package:flutter/material.dart';

abstract class AppPalette {
  const AppPalette._();
}

const Color white = Colors.white;
const Color grey = Colors.grey;
Color black = Colors.grey.shade900;
Color red = Color.fromARGB(218, 148, 12, 12);

TextStyle text_title = TextStyle(
    color: black, fontWeight: FontWeight.bold, fontSize: 18, height: 1.5);
TextStyle text_norm = TextStyle(
    color: black, fontWeight: FontWeight.normal, fontSize: 14, height: 1.5);
TextStyle datetime =
    TextStyle(color: black, fontStyle: FontStyle.italic, fontSize: 10);
