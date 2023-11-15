import 'package:flutter/material.dart';
import 'package:practice/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ToDo-List',
      home: const Home(),

    );
  }
}
