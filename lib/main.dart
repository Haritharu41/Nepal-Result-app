import 'package:flutter/material.dart';
import 'package:result_nepal/Home.dart';

void main() {
  runApp(myApp());
}

class myApp extends StatelessWidget {
  const myApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Result nepal",
      home: Home(),
    );
  }
}
