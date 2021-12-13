import 'package:flutter/material.dart';
import 'package:homework1/home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    //  title: 'Belajar Flutter',
      theme: ThemeData(
          ),
      home: Home(),
    );
  }
}