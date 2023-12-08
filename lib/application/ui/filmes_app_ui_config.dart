import 'package:flutter/material.dart';

class FilmesAppUiConfig {
  FilmesAppUiConfig._();

  static String get tittle => 'Filmes App';

  static ThemeData get theme => ThemeData(
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.white,
          iconTheme: IconThemeData(color: Colors.black),
          titleTextStyle: TextStyle(
            color: Color(0XFF222222),
            fontSize: 18,
            fontWeight: FontWeight.w500,
          ),
        ),
        elevatedButtonTheme: const ElevatedButtonThemeData(
          style: ButtonStyle(
            backgroundColor: MaterialStatePropertyAll(Colors.black),
          ),
        ),
      );
}
