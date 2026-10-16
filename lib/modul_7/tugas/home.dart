import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0D8ACB),
      appBar: AppBar(

        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context, rootNavigator: true).pop();
          },
        ),

        backgroundColor: const Color(0xFF0D8ACB),
        elevation: 0,
        title: const Text(
          "Ini Halaman Home",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(
          horizontal: 8,
          vertical: 10,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Banyak aplikasi memiliki beberapa layar untuk "
                  "menampilkan informasi yang berbeda. Contohnya, "
                  "ada layar produk, dan ketika pengguna mengklik "
                  "produk, akan muncul layar dengan detail produk tersebut.",
              style: TextStyle(
                color: Colors.white,
                fontSize: 12,
                height: 1.4,
              ),
            ),

            const SizedBox(height: 25),

            Center(
              child: Image.asset(
                'assets/icon/rumah.png',
                width: 150,
                height: 150,
                fit: BoxFit.contain,
              ),
            ),

            const SizedBox(height: 25),

            const Text(
              "Pertama, kita perlu membuat dua halaman atau "
                  "'routes' yang ingin kita tampilkan. Selanjutnya, "
                  "kita gunakan Navigator.pushNamed() untuk berpindah "
                  "dari halaman pertama ke halaman kedua. Ini seperti "
                  "kita membuka halaman baru.",
              style: TextStyle(
                color: Colors.white,
                fontSize: 12,
                height: 1.4,
              ),
            ),

            const SizedBox(height: 25),

            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.redAccent,
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 12,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(6),
                  ),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, '/tujuan');
                },
                child: const Text(
                  "Ke halaman tujuan >",
                  style: TextStyle(fontSize: 13),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}