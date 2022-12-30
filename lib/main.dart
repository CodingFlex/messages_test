// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:messages_test/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Chat UI',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color(0xFFFEF9EB),
        accentColor: const Color(0xFFFEF9EB),
        primaryColorDark: Color(0xFFFFC107).withOpacity(0.6),
        primaryColorLight: Color(0xFFFFC107).withOpacity(0.2),
      ),
      home: const HomeScreen(),
    );
  }
}
