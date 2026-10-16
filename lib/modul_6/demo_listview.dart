import 'package:flutter/material.dart';

// Fungsi utama untuk menjalankan aplikasi.
void main() => runApp(const MyApp());

// Widget utama aplikasi.
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // Membuat tampilan aplikasi.
  @override
  Widget build(BuildContext context) {
    // MaterialApp menjadi pembungkus utama aplikasi.
    return MaterialApp(
      title: 'Demo ListView',

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
          title: const Text('Demo ListView'),

          // Warna AppBar.
          backgroundColor: Colors.amber,
        ),

        // ListView digunakan untuk menampilkan beberapa item
        // yang tersusun dari atas ke bawah.
        body: ListView(

          // Memberikan jarak 8 pixel di sekeliling ListView.
          padding: const EdgeInsets.all(8),

          // Daftar item yang akan ditampilkan.
          children: [

            // Item untuk menu Kehadiran.
            listTile(
              Colors.blueAccent.shade400,
              Colors.greenAccent.shade400,
              'Kehadiran',
              'Presensi kehadiran kuliah',
              'assets/icon/boy.png',
            ),

            // Item untuk menu Jadwal.
            listTile(
              Colors.greenAccent.shade400,
              Colors.blueAccent.shade400,
              'Jadwal',
              'Jadwal perkuliahan',
              'assets/icon/timetable.png',
            ),

            // Item untuk menu Tugas.
            listTile(
              Colors.yellowAccent.shade400,
              Colors.redAccent.shade400,
              'Tugas',
              'Tugas perkuliahan di luar kelas',
              'assets/icon/homeschooling.png',
            ),

            // Item untuk menu Pengumuman.
            listTile(
              Colors.redAccent.shade400,
              Colors.amberAccent.shade400,
              'Pengumuman',
              'Informasi terkait perkuliahan',
              'assets/icon/clipboard.png',
            ),

            // Item untuk menu Nilai.
            listTile(
              Colors.purpleAccent.shade400,
              Colors.tealAccent.shade400,
              'Nilai',
              'Nilai ujian dan tugas',
              'assets/icon/marks.png',
            ),

            // Item untuk menu Catatan.
            listTile(
              Colors.tealAccent.shade400,
              Colors.purpleAccent.shade400,
              'Catatan',
              'Pengingat kegiatan perkuliahan',
              'assets/icon/pencil.png',
            ),
          ],
        ),
      ),
    );
  }

  // Fungsi ini digunakan untuk membuat satu item ListTile.
  // warna digunakan untuk warna background item.
  // warnaAvatar digunakan untuk warna lingkaran icon.
  // judul digunakan untuk judul item.
  // subjudul digunakan untuk tulisan di bawah judul.
  // gambar digunakan untuk menentukan lokasi gambar/icon.
  Container listTile(
      Color warna,
      Color warnaAvatar,
      String judul,
      String subjudul,
      String gambar,
      ) {

    // Container digunakan sebagai pembungkus setiap item.
    return Container(

      // Memberikan jarak 5 pixel antara item satu dengan lainnya.
      padding: const EdgeInsets.symmetric(vertical: 5),

      // ListTile digunakan untuk membuat tampilan item dalam bentuk daftar.
      child: ListTile(

        // Mengatur warna background ListTile.
        tileColor: warna,

        // Menampilkan judul utama item.
        title: Text(
          judul,
          style: const TextStyle(
            // Ukuran tulisan judul 20 pixel.
            fontSize: 20,

            // Membuat tulisan judul menjadi tebal.
            fontWeight: FontWeight.bold,
          ),
        ),

        // Menampilkan keterangan di bawah judul.
        subtitle: Text(
          subjudul,
          style: const TextStyle(
            // Ukuran tulisan keterangan 16 pixel.
            fontSize: 16,
          ),
        ),

        // Bagian sebelah kiri ListTile.
        leading: CircleAvatar(

          // Menentukan ukuran lingkaran.
          radius: 30,

          // Mengatur warna background lingkaran.
          backgroundColor: warnaAvatar,

          // Menampilkan gambar/icon di dalam lingkaran.
          child: Image.asset(
            gambar,

            // Mengatur lebar gambar.
            width: 35,

            // Mengatur tinggi gambar.
            height: 35,
          ),
        ),

        // Bagian sebelah kanan ListTile.
        trailing: Icon(

          // Menampilkan icon bintang.
          Icons.star,

          // Mengatur warna bintang menjadi orange.
          color: Colors.orangeAccent.shade400,
        ),
      ),
    );
  }
}