import 'package:flutter/material.dart';

abstract class AppPalette {
  const AppPalette._();
}

const Color white = Colors.white;
const Color grey = Colors.grey;
Color black = Colors.grey.shade900;
Color red = Color.fromARGB(218, 148, 12, 12);
Color light_grey = Colors.grey.shade800.withOpacity(.8);

TextStyle text_title = TextStyle(
    color: black, fontWeight: FontWeight.bold, fontSize: 18, height: 1.5);
TextStyle text_norm = TextStyle(
    color: black, fontWeight: FontWeight.normal, fontSize: 14, height: 1.5);
TextStyle datetime =
    TextStyle(color: black, fontStyle: FontStyle.italic, fontSize: 10);
TextStyle edit_text_title_hint = TextStyle(
    color: Colors.grey, fontWeight: FontWeight.bold, fontSize: 30, height: 1.5);
TextStyle edit_text_title = TextStyle(
    color: Colors.white,
    fontWeight: FontWeight.bold,
    fontSize: 30,
    height: 1.5);

TextStyle text_norm_hint = TextStyle(
    color: grey, fontWeight: FontWeight.normal, fontSize: 14, height: 1.5);
