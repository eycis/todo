import 'package:flutter/material.dart';

class ColorConstants {
  static const List<Color> randoms = <Color>[
    // TODO(eycis): tohle není good practise odkládat si někam proměnné :D
    //+ teda by bylo lepší definovat že konstanta je ten ten list a ne mít samé konstanty v něm :D
    lightBlue,
    paleGreen,
    paleYellow,
    beige,
    lightPink,
    lightGrey,
    palePink,
    paleBlue,
    mintGreen,
    paleOrange,
  ];

  static const Color lightBlue = const Color(0xFFCCE5FF);
  static const Color paleGreen = const Color(0xFFD7F9E9);
  static const Color paleYellow = const Color(0xFFFFF8E1);
  static const Color beige = const Color(0xFFF5E6CC);
  static const Color lightPink = const Color(0xFFFFD6D6);
  static const Color lightGrey = const Color(0xFFE5E5E5);
  static const Color palePink = const Color(0xFFFFF0F0);
  static const Color paleBlue = const Color(0xFFE6F9FF);
  static const Color mintGreen = const Color(0xFFD4EDDA);
  static const Color paleOrange = const Color(0xFFFFF3CD);
// TODO(eycis): ...... = const <Color> [.....]
}
