import 'dart:developer';
import 'dart:ui';
import 'package:task2/pages/pages.dart';
import 'package:flutter/material.dart';
// import 'package:task2/bottom_navigation.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: DoctorAppPage(),
    );
  }
}