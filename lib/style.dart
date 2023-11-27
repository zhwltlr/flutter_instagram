import 'package:flutter/material.dart';

var theme = ThemeData(
  // textButtonTheme: TextButtonThemeData(
  //   style: TextButton.styleFrom(
  //     backgroundColor: Colors.grey,
  //   )
  // ),
  iconTheme: IconThemeData( color : Colors.blue ),
  appBarTheme: AppBarTheme(
    color : Colors.white,
    elevation: 1,
    titleTextStyle: TextStyle(color: Colors.black,fontSize: 25),
    actionsIconTheme: IconThemeData(color:Colors.black),
  ),
  textTheme: TextTheme(
    bodyText1: TextStyle(color: Colors.blue),
    bodyText2: TextStyle(color: Colors.red)
  ),
),