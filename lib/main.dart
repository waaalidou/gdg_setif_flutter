import 'package:chat_app/completed/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: MaterialColor(const Color.fromRGBO(1, 166, 171, 1).value, const <int, Color>{
            50: Color.fromRGBO(1, 166, 171, 1),
            100: Color.fromRGBO(1, 166, 171, 1),
            200: Color.fromRGBO(1, 166, 171, 1),
            300: Color.fromRGBO(1, 166, 171, 1),
            400: Color.fromRGBO(1, 166, 171, 1),
            500: Color.fromRGBO(1, 166, 171, 1),
            600: Color.fromRGBO(1, 166, 171, 1),
            700: Color.fromRGBO(1, 166, 171, 1),
            800: Color.fromRGBO(1, 166, 171, 1),
            900: Color.fromRGBO(1, 166, 171, 1),
          },
        ),
      ),
      home: const MyHomePage(),
    );
  }
}
