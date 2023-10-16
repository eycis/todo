import 'package:flutter/material.dart';

abstract class AppPalette { // TODO(eycis): Proč přesně tady máš tu třídu když v ní nemáš ty hodnoty? :D :D 
  const AppPalette._();

  // TODO(eycis): má to být takto
  static const Color ultraPrettyPink = Color.fromRGBO(236, 64, 122, 1);
  // TODO(eycis): a přistupuješ k tomu AppPallette.ultraPrettyPink
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
TextStyle edit_text_title = TextStyle( // TODO(eycis): Text má být v jiné třídě a ne v paletách, ale to jsou detaily
    color: Colors.white,
    fontWeight: FontWeight.bold,
    fontSize: 30,
    height: 1.5);

TextStyle text_norm_hint = TextStyle(
    color: grey, fontWeight: FontWeight.normal, fontSize: 14, height: 1.5);

TextStyle edit_text_norm = TextStyle(
    color: white, fontWeight: FontWeight.normal, fontSize: 14, height: 1.5);
