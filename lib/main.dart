import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:latihan_git/binding/Binding.dart';
import 'package:latihan_git/Routes/PageRoutes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        scaffoldBackgroundColor: Color(0xFF337CCF)
      ),
      initialBinding: AppBindings(), // Use the bindings you created
      initialRoute: '/', // Set the initial route
      getPages:routes

    );
  }
}
