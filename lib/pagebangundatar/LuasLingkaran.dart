import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:latihan_git/pagebangundatar/LuasController.dart';

class LuasLingkaran extends StatefulWidget {
  const LuasLingkaran({Key? key}) : super(key: key);

  @override
  State<LuasLingkaran> createState() => _LuasLingkaranState();
}

class _LuasLingkaranState extends State<LuasLingkaran> {
  TextEditingController ctrjari = TextEditingController();
  final LuasController controller = Get.find();

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


                  child: Container(
                    width: 342,
                    height: 300,
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
                            "Luas Lingkaran",
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
                            'asset/lingk.jpg',
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
                      color: Colors.grey[200],
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
                        myTextField(ctrjari, "Jari-Jari (cm) ( π = 3.14)"),

                        ElevatedButton(
                          onPressed: () =>
                              controller.luasLingkaran(
                                double.parse(ctrjari.text.toString()),
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
                            'Hasil: ${controller.hasilLuasLingkaran.value} cm²',
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
                Card(
                  color: Colors.white,
                  child: Container(
                    width: 342,
                    height: 100, // Sesuaikan tinggi container sesuai kebutuhan Anda
                    decoration: ShapeDecoration(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(22),
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            // Tambahkan kode untuk kembali ke halaman sebelumnya di sini
                            Get.back(); // Ini akan kembali ke halaman sebelumnya menggunakan GetX
                          },
                          child: Text("Kembali"),
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
              ],
            ),
          ),
        ],
      ),
    );
  }
}
