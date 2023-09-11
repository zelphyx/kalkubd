import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:latihan_git/LuasController.dart';
import 'package:latihan_git/tabview.dart';

class LuasSegiempat extends StatefulWidget {
  const LuasSegiempat({Key? key}) : super(key: key);

  @override
  State<LuasSegiempat> createState() => _LuasSegiempatState();
}

class _LuasSegiempatState extends State<LuasSegiempat> {
  TextEditingController ctrSisi = TextEditingController();
  final LuasController controller = Get.put(LuasController());

  Widget myTextField(TextEditingController ctr, String myLabel) {
    return Container(
      margin: EdgeInsets.all(10),
      child: TextField(
        controller: ctr,
        decoration: InputDecoration(
          labelText: myLabel,
          border: OutlineInputBorder(),
          filled: true,
          fillColor: Colors.grey[200],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView( // Tambahkan ListView di sini
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Card(

                  // Menggunakan Container untuk desain Card pertama
                  child: Container(
                    width: 342,
                    height: 316,
                    decoration: ShapeDecoration(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(22),
                      ),
                    ),
                    child: Column(
                      children: [
                        SizedBox(height: 10,),
                        Center(
                          child: Text(
                            "Luas Persegi",
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),

                        ),
                        SizedBox(height: 20),
                        Text(
                          'Rumus : ',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 19,

                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(height: 5,),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(12), // Border radius gambar
                          child: Image.asset(
                            'asset/persegi.jpg', // Ganti dengan path gambar yang sesuai
                             // Sesuaikan tinggi gambar
                            fit: BoxFit.cover, // Sesuaikan mode tampilan gambar
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Card(
                  elevation: 3,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(22),
                  ),
                  child: Container(
                    width: double.infinity,

                    padding: EdgeInsets.all(16.0),

                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(22),
                    ),
                    child: Column(
                      children: [
                        Text(
                          "Kalkulator Luas",
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        myTextField(ctrSisi, "Sisi (cm)"),
                        ElevatedButton(
                          onPressed: () =>
                              controller.luasSegiempat(
                                double.parse(ctrSisi.text.toString()),
                              ),
                          child: Text("Hitung"),
                          style: ElevatedButton.styleFrom(
                            primary: Colors.transparent,
                            onPrimary: Colors.black,
                            side: BorderSide(color: Colors.black),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Card(
                  color: Colors.white,
                  child: Container(
                    width: 342,
                    height: 222,
                    decoration: ShapeDecoration(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(22),
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Hasil Kalkulator",
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 10), // Jarak tambahan jika diperlukan
                        Obx(
                              () => Text(
                            'Hasil: ${controller.hasilLuasSegiempat.value} cm²',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

              ],
            ),
          ),
        ],
      ),
    );
  }
}
