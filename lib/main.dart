import 'package:flutter/material.dart';
import 'package:wisatacandi/data/candi_data.dart';
import 'package:wisatacandi/screens/detail_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key}); // <-- Diperbaiki di sini

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Wisata Candi',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: DetailScreen(candi: candiList[5]),
    );
  }
}