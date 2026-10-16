// Mengambil library Flutter Material Design.
// Isinya ada banyak widget yang kita butuhkan seperti Scaffold, AppBar, Card, Text, Icon, dll.
import 'package:flutter/material.dart';

// Fungsi utama yang pertama kali dijalankan saat aplikasi dibuka.
void main() {
  // Menjalankan aplikasi dengan MyApp sebagai tampilan awal.
  runApp(const MyApp());
}

// Membuat class MyApp sebagai widget utama aplikasi.
// StatelessWidget digunakan karena tampilan ini tidak memiliki data yang berubah-ubah.
class MyApp extends StatelessWidget {
  // Constructor untuk MyApp.
  const MyApp({super.key});

  // Bagian ini digunakan untuk membuat tampilan aplikasi.
  @override
  Widget build(BuildContext context) {
    // MaterialApp adalah pembungkus utama aplikasi Flutter.
    return MaterialApp(
      // Memberikan nama/judul untuk aplikasi.
      title: 'Demo Card',

      // Scaffold digunakan sebagai kerangka dasar halaman.
      home: Scaffold(

        // AppBar adalah bagian atas dari halaman.
        appBar: AppBar(

          // leading digunakan untuk menaruh widget di sebelah kiri AppBar.
          leading: IconButton(

            // Menampilkan icon panah ke kiri.
            icon: const Icon(Icons.arrow_back),

            // Perintah yang dijalankan saat tombol ditekan.
            onPressed: () {
              // Kembali ke halaman sebelumnya.
              Navigator.pop(context);
            },
          ),

          // Menampilkan judul pada AppBar.
          title: const Text('Card Demo'),

          // Mengubah warna background AppBar menjadi kuning.
          backgroundColor: Colors.amber,
        ),

        // body adalah isi utama dari halaman.
        body: Center(

          // Center membuat Card berada di tengah halaman.
          child: Card(

            // Memberikan jarak 8 pixel di luar Card.
            margin: const EdgeInsets.all(8),

            // Isi dari Card.
            child: Column(

              // Column hanya menggunakan tinggi sesuai dengan isi di dalamnya.
              mainAxisSize: MainAxisSize.min,

              // children berisi widget-widget yang disusun dari atas ke bawah.
              children: [

                // ListTile digunakan untuk menampilkan informasi tempat.
                const ListTile(

                  // Icon yang ditampilkan di sebelah kiri.
                  leading: Icon(
                    // Menggunakan icon lokasi.
                    Icons.location_pin,

                    // Warna icon dibuat merah.
                    color: Colors.red,
                  ),

                  // Menampilkan nama tempat sebagai judul.
                  title: Text(
                    'Taman Nasional Bromo Tengger Semeru',

                    // Mengatur tampilan tulisan judul.
                    style: TextStyle(
                      // Ukuran tulisan dibuat 15 pixel.
                      fontSize: 15,

                      // Membuat tulisan menjadi tebal.
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  // Menampilkan lokasi tempat di bawah judul.
                  subtitle: Text('Jawa Timur, Indonesia'),
                ),

                // Container digunakan untuk mengatur bagian tombol.
                Container(

                  // Memberikan jarak di sebelah kiri dan kanan.
                  padding: const EdgeInsets.only(
                    left: 8,
                    right: 8,
                  ),

                  // Row digunakan supaya tombol tersusun secara mendatar.
                  child: Row(

                    // Membuat tombol berada di sebelah kanan.
                    mainAxisAlignment: MainAxisAlignment.end,

                    // Widget-widget yang ada di dalam Row.
                    children: [

                      // Membuat tombol dengan garis di bagian luar.
                      OutlinedButton(

                        // Aksi saat tombol ditekan.
                        // Masih kosong karena belum diberikan fungsi.
                        onPressed: () {},

                        // Mengatur tampilan tombol.
                        style: OutlinedButton.styleFrom(

                          // Memberikan warna biru pada garis tombol.
                          side: const BorderSide(
                            color: Colors.blue,
                          ),
                        ),

                        // Icon yang ditampilkan di dalam tombol.
                        child: const Icon(Icons.map),
                      ),

                      // Memberikan jarak 10 pixel antara tombol Map dan Phone.
                      const SizedBox(width: 10),

                      // Membuat tombol kedua untuk telepon.
                      OutlinedButton(

                        // Aksi saat tombol ditekan.
                        // Masih kosong karena belum diberikan fungsi.
                        onPressed: () {},

                        // Mengatur tampilan tombol.
                        style: OutlinedButton.styleFrom(

                          // Memberikan warna biru pada garis tombol.
                          side: const BorderSide(
                            color: Colors.blue,
                          ),
                        ),

                        // Icon telepon ditampilkan di dalam tombol.
                        child: const Icon(Icons.phone),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}