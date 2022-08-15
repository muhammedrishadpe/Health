// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'package:flutter/material.dart';

import 'package:health/screens/bottom_Bar/bottom_bar.dart';

import 'screens/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Health',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Mukta'),
      home: LoginAuth(),
    );
  }
}
