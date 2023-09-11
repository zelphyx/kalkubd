import 'package:flutter/material.dart';
import 'package:latihan_git/LuasJajarGenjang.dart';
import 'package:latihan_git/LuasLingkaran.dart';
import 'package:latihan_git/LuasPersegiPanjang.dart';
import 'package:latihan_git/LuasSegiempat.dart';
import 'package:latihan_git/LuasSegitiga.dart';

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
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LuasSegitiga()),
                  );
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
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LuasSegiempat()),
                  );
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
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LuasPersegiPanjang()),
                  );
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
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LuasJajarGenjang()),
                  );
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
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LuasLingkaran()),
                  );
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
