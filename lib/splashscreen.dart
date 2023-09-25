import 'dart:async';
import 'package:flutter/material.dart';
import 'package:latihan_git/tabview.dart';
import 'package:get/get.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Timer(Duration(seconds: 3), () {
      Get.off(MainScreen());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset('asset/bdd.jpg',width: 200,

          height: 200,), // Gambar splash
      ),
    );
  }
}
