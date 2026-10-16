// Mengambil library Flutter Material Design.
// Library ini menyediakan widget yang digunakan di dalam program.
import 'package:flutter/material.dart';

// Fungsi utama yang pertama kali dijalankan saat aplikasi dibuka.
void main() {
  // Menjalankan aplikasi dengan MyApp sebagai widget utama.
  runApp(const MyApp());
}

// Membuat class MyApp sebagai widget utama aplikasi.
// StatelessWidget digunakan karena tampilan aplikasi tidak berubah-ubah.
class MyApp extends StatelessWidget {

  // Constructor untuk class MyApp.
  const MyApp({super.key});

  // Digunakan untuk membuat tampilan aplikasi.
  @override
  Widget build(BuildContext context) {

    // MaterialApp adalah pembungkus utama aplikasi Flutter.
    return MaterialApp(

      // Memberikan judul pada aplikasi.
      title: 'Music Card',

      // Menggunakan tema gelap untuk seluruh aplikasi.
      theme: ThemeData.dark(),

      // Scaffold digunakan sebagai kerangka dasar halaman.
      home: Scaffold(

        // AppBar adalah bagian atas halaman.
        appBar: AppBar(

          // Menampilkan tombol di sebelah kiri AppBar.
          leading: IconButton(

            // Menggunakan icon panah kembali.
            icon: const Icon(Icons.arrow_back),

            // Perintah yang dijalankan saat tombol ditekan.
            onPressed: () {

              // Kembali ke halaman sebelumnya.
              Navigator.pop(context);
            },
          ),

          // Menampilkan judul pada AppBar.
          title: const Text('Sedang memutar'),

          // Membuat judul berada di tengah AppBar.
          centerTitle: true,
        ),

        // body adalah bagian utama dari halaman.
        body: Center(

          // Membuat Card berada di tengah halaman.
          child: Card(

            // Memberikan efek bayangan pada Card.
            // Semakin besar nilainya, bayangannya semakin terlihat.
            elevation: 4,

            // Mengatur bentuk sudut Card.
            shape: RoundedRectangleBorder(

              // Membuat sudut Card menjadi melengkung.
              borderRadius: BorderRadius.circular(12),
            ),

            // Isi dari Card.
            child: Padding(

              // Memberikan jarak 12 pixel antara isi dengan tepi Card.
              padding: const EdgeInsets.all(12),

              // Column digunakan untuk menyusun isi Card dari atas ke bawah.
              child: Column(

                // Column hanya menggunakan tinggi sesuai dengan isi di dalamnya.
                mainAxisSize: MainAxisSize.min,

                // children berisi semua widget yang ada di dalam Card.
                children: [

                  // Menampilkan icon album sebagai gambar musik.
                  const Icon(

                    // Menggunakan icon album.
                    Icons.album,

                    // Mengatur ukuran icon menjadi 120 pixel.
                    size: 120,
                  ),

                  // Memberikan jarak 15 pixel setelah icon album.
                  const SizedBox(
                    height: 15,
                  ),

                  // Menampilkan judul lagu.
                  const Text(
                    'Like We Just Met',

                    // Mengatur tampilan judul lagu.
                    style: TextStyle(

                      // Ukuran tulisan 20 pixel.
                      fontSize: 20,

                      // Membuat tulisan menjadi tebal.
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  // Memberikan jarak 5 pixel setelah judul lagu.
                  const SizedBox(
                    height: 5,
                  ),

                  // Menampilkan nama penyanyi.
                  const Text(
                    'NCT DREAM',

                    // Mengatur ukuran tulisan nama penyanyi.
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),

                  // Memberikan jarak 15 pixel setelah nama penyanyi.
                  const SizedBox(
                    height: 15,
                  ),

                  // Row digunakan untuk menyusun widget secara mendatar.
                  Row(
                    children: [

                      // Spacer digunakan untuk mengambil ruang kosong.
                      // Karena berada sebelum IconButton, tombol akan terdorong ke kanan.
                      const Spacer(),

                      // Membuat tombol dengan icon hati.
                      IconButton(

                        // Aksi saat tombol ditekan.
                        // Saat ini masih kosong karena belum diberikan fungsi.
                        onPressed: () {},

                        // Icon yang ditampilkan adalah hati yang belum dipilih.
                        icon: const Icon(
                          Icons.favorite_border,

                          // Mengatur ukuran icon menjadi 30 pixel.
                          size: 30,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}