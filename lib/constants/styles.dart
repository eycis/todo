import 'package:flutter/material.dart';

abstract class AppPalette {
  // TODO(eycis): Proč přesně tady máš tu třídu když v ní nemáš ty hodnoty? :D :D
  const AppPalette._();

  // TODO(eycis): má to být takto
  static const Color ultraPrettyPink = Color.fromRGBO(236, 64, 122, 1);
  static const Color white = Colors.white;
  static const Color grey = Colors.grey;
  static Color black = Colors.grey.shade900;
  static Color red = Color.fromARGB(218, 148, 12, 12);
  static Color light_grey = Colors.grey.shade800.withOpacity(.8);
  // TODO(eycis): a přistupuješ k tomu AppPallette.ultraPrettyPink
}
