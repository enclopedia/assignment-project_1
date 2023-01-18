import 'package:apk11/textfields.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(accentColor: Colors.white, focusColor: Colors.amber),
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          body: Textfields(),
        ),
      ),
    );
  }
}
