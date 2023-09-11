import 'package:flutter/material.dart';
import 'package:latihan_git/LuasSegitiga.dart';
import 'package:latihan_git/tabview.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        scaffoldBackgroundColor: Color(0xFF337CCF)
      ),
      home: MainScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}