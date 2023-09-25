import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:latihan_git/pagebangundatar/LuasJajarGenjang.dart';
import 'package:latihan_git/pagebangundatar/LuasLingkaran.dart';
import 'package:latihan_git/pagebangundatar/LuasPersegiPanjang.dart';
import 'package:latihan_git/pagebangundatar/LuasSegiempat.dart';
import 'package:latihan_git/pagebangundatar/LuasSegitiga.dart';
import 'package:latihan_git/binding/Binding.dart';
import 'package:latihan_git/Routes/PageRoutes.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(
      primaryColor: Colors.black,
      scaffoldBackgroundColor: Colors.grey,
      textTheme: TextTheme(
        headline6: TextStyle(color: Colors.black),
        button: TextStyle(color: Colors.black),
      ),
    ),
    home: MainScreen(),
  ));
}

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
            children: [
              SizedBox(height: 25.0),
              // Card( // Card untuk mengcover bagian teks
              //   elevation: 3, // Atur elevasi sesuai keinginan
              //   shape: RoundedRectangleBorder(
              //     borderRadius: BorderRadius.circular(22), // Atur border radius sesuai keinginan
              //   ),
              //   margin: EdgeInsets.all(16), // Atur margin sesuai keinginan
                Container(
                  padding: EdgeInsets.all(16.0),
                  alignment: Alignment.center,
                  child: Text(
                    "Kalkulator Bangun Datar",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      letterSpacing: 1.5,
                    ),
                  ),
                ),
              Expanded(
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 16.0,
                    crossAxisSpacing: 16.0,
                  ),
                  itemCount: 5,
                  padding: EdgeInsets.all(16.0),
                  itemBuilder: (context, index) {
          Widget button;
          String buttonText = "";

          switch (index) {
            case 0:
              buttonText = "Luas Segitiga";
              button = ElevatedButton(
                onPressed: () {
                  Get.toNamed("/segitiga");
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.transparent,
                  onPrimary: Colors.transparent,
                  shadowColor: Colors.transparent,
                  backgroundColor: Color(0xff303030),
                  minimumSize: Size(150, double.infinity),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                ),
                child: Text(
                  buttonText,
                  style: TextStyle(color: Colors.white),
                ),
              );
              break;

            case 1:
              buttonText = "Luas Segiempat";
              button = ElevatedButton(
                onPressed: () {
                  Get.toNamed("/segiempat");
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.transparent,
                  onPrimary: Colors.transparent,
                  shadowColor: Colors.transparent,
                  backgroundColor: Color(0xff303030),
                  minimumSize: Size(150, double.infinity),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                ),
                child: Text(
                  buttonText,
                  style: TextStyle(color: Colors.white),
                ),
              );
              break;
            case 2:
              buttonText = "Luas Persegi Panjang";
              button = ElevatedButton(
                onPressed: () {
                  Get.toNamed("/persegipanjang");
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.transparent,
                  onPrimary: Colors.transparent,
                  shadowColor: Colors.transparent,
                  backgroundColor: Color(0xff303030),
                  minimumSize: Size(150, double.infinity),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                ),
                child: Text(
                  buttonText,
                  style: TextStyle(color: Colors.white),
                ),
              );
              break;
            case 3:
              buttonText = "Luas Jajar Genjang";
              button = ElevatedButton(
                onPressed: () {
                  Get.toNamed("/jajargenjang");
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.transparent,
                  onPrimary: Colors.transparent,
                  shadowColor: Colors.transparent,
                  backgroundColor: Color(0xff303030),
                  minimumSize: Size(150, double.infinity),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                ),
                child: Text(
                  buttonText,
                  style: TextStyle(color: Colors.white),
                ),
              );
              break;
            case 4:
              buttonText = "Luas Lingkaran";
              button = ElevatedButton(
                onPressed: () {
                  Get.toNamed("/lingkaran");
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.transparent,
                  onPrimary: Colors.transparent,
                  shadowColor: Colors.transparent,
                  backgroundColor: Color(0xff303030),
                  minimumSize: Size(150, double.infinity),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                ),
                child: Text(
                  buttonText,
                  style: TextStyle(color: Colors.white),
                ),
              );
              break;
            default:
              buttonText = "Default Button"; // Set a default button text
              button = ElevatedButton(
                onPressed: () {
                  // Default action when the button is pressed
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.transparent,
                  onPrimary: Colors.transparent,
                  shadowColor: Colors.transparent,
                  backgroundColor: Colors.blue, // Warna latar belakang
                  minimumSize: Size(150, double.infinity), // Menyesuaikan tinggi kartu
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                ),
                child: Text(
                  buttonText,
                  style: TextStyle(color: Colors.black), // Warna teks hitam
                ),
              );
          }

          return Card(
            color: Colors.transparent,
            child: Column(
              children: [
                SizedBox(height: 16.0),
                Expanded(child: button),
              ],
            ),
          );
        },
      ),
    )
    ]
        ),
    );
  }
}
