// Mengambil library Flutter Material Design.
// Isinya menyediakan widget seperti Scaffold, AppBar, Container, Row, dan lainnya.
import 'package:flutter/material.dart';

// Fungsi utama yang pertama kali dijalankan ketika aplikasi dibuka.
void main() {
  // Menjalankan aplikasi menggunakan widget MyApp.
  runApp(const MyApp());
}

// Membuat class MyApp sebagai widget utama aplikasi.
// StatelessWidget digunakan karena tampilan tidak memiliki data yang berubah.
class MyApp extends StatelessWidget {

  // Constructor untuk class MyApp.
  const MyApp({super.key});

  // Digunakan untuk membuat tampilan aplikasi.
  @override
  Widget build(BuildContext context) {

    // MaterialApp adalah pembungkus utama aplikasi Flutter.
    return MaterialApp(

      // Memberikan judul pada aplikasi.
      title: 'Contoh SizedBox',

      // Scaffold digunakan sebagai kerangka dasar halaman.
      home: Scaffold(

        // AppBar adalah bagian atas halaman.
        appBar: AppBar(

          // Menampilkan tombol di sebelah kiri AppBar.
          leading: IconButton(

            // Menggunakan icon panah ke kiri.
            icon: const Icon(Icons.arrow_back),

            // Perintah yang dijalankan ketika tombol ditekan.
            onPressed: () {

              // Kembali ke halaman sebelumnya.
              Navigator.pop(context);
            },
          ),

          // Mengubah warna AppBar menjadi kuning.
          backgroundColor: Colors.amber,

          // Menampilkan judul pada AppBar.
          title: const Text('Contoh SizedBox'),
        ),

        // body adalah isi utama dari halaman.
        body: Center(

          // Center membuat isi berada di tengah halaman.
          child: Row(

            // Mengatur posisi widget secara horizontal agar berada di tengah.
            mainAxisAlignment: MainAxisAlignment.center,

            // Mengatur posisi widget secara vertikal agar berada di tengah.
            crossAxisAlignment: CrossAxisAlignment.center,

            // children berisi widget-widget yang akan ditampilkan dalam Row.
            children: [

              // Membuat kotak pertama dengan warna kuning.
              // Ukurannya berasal dari fungsi kotakUji(), yaitu 75 x 75 pixel.
              kotakUji(Colors.amber),

              // Spacer digunakan untuk memberikan ruang kosong.
              // flex: 1 berarti bagian kosong ini memiliki ukuran 1 bagian.
              const Spacer(flex: 1),

              // SizedBox digunakan untuk menentukan ukuran widget di dalamnya.
              SizedBox(

                // Menentukan lebar menjadi 100 pixel.
                width: 100,

                // Menentukan tinggi menjadi 100 pixel.
                height: 100,

                // Memasukkan kotak berwarna hijau ke dalam SizedBox.
                // Walaupun SizedBox berukuran 100 x 100,
                // kotakUji sendiri tetap memiliki ukuran 75 x 75.
                child: kotakUji(Colors.green),
              ),

              // Spacer memberikan ruang kosong setelah kotak hijau.
              // flex: 2 berarti ruang ini berukuran 2 bagian.
              // Jadi ukurannya lebih besar dari Spacer yang flex-nya 1.
              const Spacer(flex: 2),

              // Membuat kotak ketiga dengan warna biru.
              kotakUji(Colors.blue),
            ],
          ),
        ),
      ),
    );
  }

  // Fungsi ini digunakan untuk membuat Container berbentuk kotak.
  // Parameter warna digunakan supaya warna kotaknya bisa diatur saat dipanggil.
  Container kotakUji(Color warna) {

    // Mengembalikan Container dengan ukuran dan warna tertentu.
    return Container(

      // Menentukan tinggi kotak sebesar 75 pixel.
      height: 75,

      // Menentukan lebar kotak sebesar 75 pixel.
      width: 75,

      // Menggunakan warna yang dikirim melalui parameter warna.
      color: warna,
    );
  }
}