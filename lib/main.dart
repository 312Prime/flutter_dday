import 'package:flutter/material.dart';
import 'package:flutter_dday/screen/HomeScreen.dart';

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData(
        fontFamily: 'nanum',
        textTheme: TextTheme(
            displayLarge: TextStyle(
              color: Colors.white,
              fontFamily: 'flower',
              fontSize: 70.0,
            ),
            displayMedium: TextStyle(
              color: Colors.white,
              fontFamily: 'nanum',
              fontSize: 50.0,
            ),
            displaySmall: TextStyle(
              color: Colors.white,
              fontFamily: 'nanum',
              fontSize: 30.0,
            ),
            headlineMedium: TextStyle(
                color: Colors.white,
                fontFamily: 'nanum',
                fontSize: 50.0,
                fontWeight: FontWeight.w600),
        ),
      ),
      home: HomeScreen(),
    ),
  );
}
