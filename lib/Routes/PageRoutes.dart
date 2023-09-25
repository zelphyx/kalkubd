import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:latihan_git/pagebangundatar/LuasJajarGenjang.dart';
import 'package:latihan_git/pagebangundatar/LuasLingkaran.dart';
import 'package:latihan_git/pagebangundatar/LuasPersegiPanjang.dart';
import 'package:latihan_git/pagebangundatar/LuasSegiempat.dart';
import 'package:latihan_git/pagebangundatar/LuasSegitiga.dart';
import 'package:latihan_git/splashscreen.dart';
import 'package:latihan_git/tabview.dart';


List<GetPage> routes = [
  GetPage(name: '/', page: () =>  SplashScreen()), // Define your routes here
  GetPage(name: '/home', page: () =>  MainScreen()), // Define your routes here
  GetPage(name: '/segitiga', page: () =>  LuasSegitiga()), // Define your routes here
  GetPage(name: '/segiempat', page: () =>  LuasSegiempat()), // Define your routes here
  GetPage(name: '/jajargenjang', page: () =>  LuasJajarGenjang()), // Define your routes here
  GetPage(name: '/lingkaran', page: () =>  LuasLingkaran()), // Define your routes here
  GetPage(name: '/persegipanjang', page: () =>  LuasPersegiPanjang()), // Define your routes here
  // Add more routes as needed
];