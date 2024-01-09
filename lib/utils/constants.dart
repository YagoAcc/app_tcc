import 'package:flutter/material.dart';

MaterialStateProperty<Color> yellowMaterialState =
    MaterialStateProperty.all<Color>(const Color(0xFFFFEEA0));
Color yellowColor = const Color(0xFFFFEEA0);
MaterialStateProperty<Color> darkYellowMaterialState =
    MaterialStateProperty.all<Color>(const Color(0xFFc9ba76));

TextStyle txtStyleButtons = const TextStyle(
  color: Colors.black87,
  fontFamily: 'Sono',
  fontWeight: FontWeight.bold,
);

TextStyle txtStyleTitle = const TextStyle(
  color: Colors.black87,
  fontSize: 30,
  fontWeight: FontWeight.bold,
  fontFamily: 'Paytone',
);

TextStyle txtStyleStandard = const TextStyle(
  color: Colors.black87,
  fontWeight: FontWeight.bold,
);

TextStyle txtStyleSmallButtons = const TextStyle(
  color: Colors.black87,
  fontSize: 13,
  decoration: TextDecoration.underline,
  fontFamily: 'Sono',
  fontWeight: FontWeight.bold,
);

TextStyle txtStyleAppBar = const TextStyle(
  color: Colors.black87,
  fontSize: 16,
  fontFamily: 'Sono',
  fontWeight: FontWeight.bold,
);

TextStyle txtStyleTitle2 = const TextStyle(
  color: Colors.black87,
  fontSize: 20,
  fontWeight: FontWeight.bold,
  fontFamily: 'Paytone',
);
