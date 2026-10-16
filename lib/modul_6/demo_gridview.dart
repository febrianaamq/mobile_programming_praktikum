import 'package:flutter/material.dart';

// Fungsi utama untuk menjalankan aplikasi.
void main() => runApp(const MyApp());

// Widget utama dari aplikasi.
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // Membuat tampilan aplikasi.
  @override
  Widget build(BuildContext context) {
    // MaterialApp adalah pembungkus utama aplikasi.
    return MaterialApp(
      title: 'Demo GridView',

      // Scaffold digunakan sebagai kerangka halaman.
      home: Scaffold(

        // Bagian atas halaman.
        appBar: AppBar(

          // Tombol kembali di sebelah kiri.
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              // Kembali ke halaman sebelumnya.
              Navigator.pop(context);
            },
          ),

          // Judul pada AppBar.
          title: const Text('Demo GridView'),

          // Warna AppBar dibuat kuning.
          backgroundColor: Colors.amber,
        ),

        // GridView digunakan untuk membuat tampilan
        // beberapa kotak yang tersusun seperti tabel/grid.
        body: GridView(

          // Memberikan jarak 10 pixel dari tepi layar.
          padding: const EdgeInsets.all(10),

          // Mengatur bentuk dan jarak antar kotak pada GridView.
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(

            // Membuat 2 kolom dalam satu baris.
            crossAxisCount: 2,

            // Jarak antar kotak secara vertikal.
            mainAxisSpacing: 10,

            // Jarak antar kotak secara horizontal.
            crossAxisSpacing: 10,
          ),

          // Grid disusun dari atas ke bawah.
          scrollDirection: Axis.vertical,

          // Membuat GridView tidak bisa di-scroll.
          physics: const NeverScrollableScrollPhysics(),

          // Daftar kotak yang akan ditampilkan.
          children: [

            // Kotak pertama untuk menu Kehadiran.
            tile(
              Colors.blueAccent.shade400,
              'assets/icon/boy.png',
              'Kehadiran',
            ),

            // Kotak kedua untuk menu Jadwal Kuliah.
            tile(
              Colors.greenAccent.shade400,
              'assets/icon/timetable.png',
              'Jadwal Kuliah',
            ),

            // Kotak ketiga untuk menu Tugas.
            tile(
              Colors.yellowAccent.shade400,
              'assets/icon/homeschooling.png',
              'Tugas',
            ),

            // Kotak keempat untuk menu Pengumuman.
            tile(
              Colors.redAccent.shade400,
              'assets/icon/clipboard.png',
              'Pengumuman',
            ),

            // Kotak kelima untuk menu Nilai.
            tile(
              Colors.purpleAccent.shade400,
              'assets/icon/marks.png',
              'Nilai',
            ),

            // Kotak keenam untuk menu Catatan.
            tile(
              Colors.tealAccent.shade400,
              'assets/icon/pencil.png',
              'Catatan',
            ),
          ],
        ),
      ),
    );
  }

  // Fungsi untuk membuat satu kotak menu.
  // warnaKotak = warna background kotak.
  // gambar = lokasi file gambar/icon.
  // judul = tulisan yang ditampilkan di bawah gambar.
  ClipRRect tile(Color warnaKotak, String gambar, String judul) {

    // ClipRRect digunakan supaya sudut kotak menjadi melengkung.
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),

      // Container digunakan sebagai kotak utama.
      child: Container(
        // Warna kotak diambil dari parameter warnaKotak.
        color: warnaKotak,

        // GridTile digunakan untuk membuat satu item pada GridView.
        child: GridTile(

          // Footer adalah bagian bawah dari GridTile.
          footer: SizedBox(

            // Tinggi bagian footer dibuat 45 pixel.
            height: 45,

            // GridTileBar digunakan untuk membuat bagian bawah
            // yang berisi judul dengan background transparan gelap.
            child: GridTileBar(
              backgroundColor: Colors.black38,

              // Menampilkan judul menu.
              title: Text(
                judul,
                style: const TextStyle(
                  // Ukuran tulisan 18 pixel.
                  fontSize: 18,

                  // Membuat tulisan menjadi tebal.
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),

          // Menampilkan gambar/icon di bagian utama kotak.
          child: Image.asset(
            gambar,

            // Mengatur skala ukuran gambar.
            scale: 4,
          ),
        ),
      ),
    );
  }
}