import 'package:flutter/material.dart';

class AppTheme {
  static final ThemeData light = ThemeData();

  static final ThemeData dark = ThemeData(
    scaffoldBackgroundColor: Color.fromRGBO(24, 24, 41, 1.0),
    cardColor: Color.fromRGBO(34, 34, 50, 1.0),
    primaryColor: Colors.white,
    primarySwatch: Colors.blue,

    primaryTextTheme: TextTheme(
      titleMedium: TextStyle(
        // Основой текст
          fontFamily: 'SourceSans',
          fontWeight: FontWeight.w500,
          fontSize: 24,
          color: Color.fromRGBO(255, 255, 255, 1.0)
      ),
      bodyLarge: TextStyle(
        // Основой текст
          fontFamily: 'SourceSans',
          fontWeight: FontWeight.w800,
          fontSize: 18,
          color: Color.fromRGBO(255, 255, 255, 1.0)
      ),
      bodyMedium: TextStyle(
        // Основой текст
          fontFamily: 'SourceSans',
          fontWeight: FontWeight.w500,
          fontSize: 16,
          color: Color.fromRGBO(255, 255, 255, 1.0)
      ),
      bodySmall: TextStyle(
        // Основой текст
          fontFamily: 'SourceSans',
          fontWeight: FontWeight.w500,
          fontSize: 12,
          color: Color.fromRGBO(170, 170, 170, 1.0)
      ),

    )
  );
}
