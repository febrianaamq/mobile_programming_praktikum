import 'package:flutter/material.dart';

class TujuanPage extends StatelessWidget {
  const TujuanPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFF4935),
      appBar: AppBar(
        backgroundColor: const Color(0xFFFF4935),
        elevation: 0,
        title: const Text(
          "Ini Halaman Tujuan",
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
              "Untuk berpindah ke halaman baru, gunakan metode "
                  "Navigator.push(). Metode push() akan menambahkan "
                  "route ke dalam tumpukan Route yang dikelola oleh "
                  "Navigator. Route dipilih dapat secara otomatis "
                  "menggunakan MaterialPageRoute, yang memiliki "
                  "animasi transisi sesuai dengan platform yang digunakan.",
              style: TextStyle(
                color: Colors.white,
                fontSize: 12,
                height: 1.4,
              ),
            ),

            const SizedBox(height: 25),

            Center(
              child: Image.asset(
                'assets/icon/pulau.png',
                width: 150,
                height: 150,
                fit: BoxFit.contain,
              ),
            ),

            const SizedBox(height: 25),

            const Text(
              "Untuk menutup halaman kedua dan kembali ke halaman "
                  "pertama, gunakan metode Navigator.pop(). Metode pop() "
                  "akan menghapus Route saat ini dari tumpukan Route "
                  "yang dikelola oleh Navigator.",
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
                  backgroundColor: Colors.blue,
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
                  Navigator.pop(context);
                },
                child: const Text(
                  "< Kembali ke home",
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