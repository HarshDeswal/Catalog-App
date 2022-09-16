import 'package:flutter/material.dart';

class MyTheme {
  static ThemeData lightTheme(BuildContext context) => ThemeData(
      primarySwatch: Colors.deepPurple,
      appBarTheme: AppBarTheme(
        color: Color.fromARGB(255, 192, 7, 225),
        elevation: 0.0,
        iconTheme: IconThemeData(color: Colors.black),
      ));

  static ThemeData darkTheme(BuildContext context) => ThemeData(
        brightness: Brightness.dark,
      );
  //Colors
  static Color creamColor = Color(0xfff5f5f5);
  static Color darkBluishColor = Color.fromARGB(255, 109, 5, 114);
}
