
// Digunakan untuk mengolah data JSON menjadi data Dart.
import 'dart:convert';

// Library utama Flutter untuk membuat tampilan aplikasi.
import 'package:flutter/material.dart';

// Library untuk mengambil data dari API menggunakan HTTP.
import 'package:http/http.dart' as http;

// Fungsi utama untuk menjalankan aplikasi.
void main() {
  runApp(const MyApp());
}

// Widget utama aplikasi.
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // Membuat tampilan aplikasi.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Judul aplikasi.
      title: 'Demo ListView.builder',

      // Mengatur tema aplikasi.
      theme: ThemeData(
        // Membuat warna utama berdasarkan warna amber.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.amber),

        // Menggunakan Material Design 3.
        useMaterial3: true,
      ),

      // Menampilkan halaman utama aplikasi.
      home: const MyHomePage(title: 'Demo ListView.builder'),
    );
  }
}

// StatefulWidget digunakan karena data berita akan berubah
// setelah data berhasil diambil dari API.
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // Menyimpan judul halaman.
  final String title;

  // Membuat State untuk MyHomePage.
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

// State dari MyHomePage.
class _MyHomePageState extends State<MyHomePage> {

  // List ini digunakan untuk menyimpan data berita
  // yang didapat dari API.
  List dataBerita = [];

  // initState dijalankan satu kali saat halaman pertama kali dibuat.
  @override
  void initState() {
    super.initState();

    // Memanggil fungsi untuk mengambil data berita.
    _ambilData();
  }

  // Fungsi untuk mengambil data berita dari API.
  Future _ambilData() async {
    try {

      // Mengirim request GET ke alamat API.
      final response = await http.get(
        Uri.parse(
          'https://jakpost.vercel.app/api/category/business/tech',
        ),
      );

      // Mengecek apakah request berhasil.
      // Status code 200 berarti data berhasil diterima.
      if (response.statusCode == 200) {

        // Mengubah data JSON dari API menjadi data Dart.
        final data = jsonDecode(response.body);

        // Memasukkan data posts ke dalam dataBerita.
        setState(() {
          dataBerita = data['posts'];
        });
      } else {

        // Jika request gagal, tampilkan pesan error.
        throw Exception('Gagal load data');
      }
    } catch (e) {

      // Menampilkan error jika terjadi masalah.
      print(e);
    }
  }

  // Membuat tampilan halaman.
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      // Bagian atas halaman.
      appBar: AppBar(

        // Tombol kembali di sebelah kiri.
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {

            // Kembali ke halaman sebelumnya.
            Navigator.of(context, rootNavigator: true).pop();
          },
        ),

        // Warna AppBar dibuat amber.
        backgroundColor: Colors.amber,

        // Judul AppBar diambil dari widget.title.
        title: Text(widget.title),
      ),

      // ListView.builder digunakan untuk membuat daftar berita
      // berdasarkan jumlah data yang ada.
      body: ListView.builder(

        // Jumlah item disesuaikan dengan jumlah berita.
        itemCount: dataBerita.length,

        // Membuat setiap item berdasarkan index.
        itemBuilder: (context, index) {

          // Memberikan jarak 8 pixel di sekitar setiap item.
          return Padding(
            padding: const EdgeInsets.all(8),

            // Container digunakan sebagai pembungkus setiap berita.
            child: Container(

              // Mengatur tampilan bagian luar Container.
              decoration: BoxDecoration(

                // Membuat sudut Container menjadi melengkung.
                borderRadius: BorderRadius.circular(10),

                // Memberikan garis pada bagian luar Container.
                border: Border.all(

                  // Mengambil warna garis dari tema aplikasi.
                  color: Theme.of(context)
                      .colorScheme
                      .inversePrimary,

                  // Ketebalan garis dibuat 1 pixel.
                  width: 1,
                ),
              ),

              // Memberikan jarak atas dan bawah sebesar 4 pixel.
              padding: const EdgeInsets.symmetric(vertical: 4),

              // ListTile digunakan untuk menyusun
              // gambar, judul, dan tanggal berita.
              child: ListTile(

                // Menampilkan judul berita.
                title: Text(

                  // Mengambil judul berdasarkan index.
                  // Jika tidak ada judul, tampilkan "Tidak ada judul".
                  dataBerita[index]['title'] ?? "Tidak ada judul",

                  // Judul maksimal ditampilkan dalam 3 baris.
                  maxLines: 3,

                  // Jika judul terlalu panjang,
                  // bagian akhirnya diganti menjadi "...".
                  overflow: TextOverflow.ellipsis,

                  // Mengatur tampilan judul.
                  style: const TextStyle(
                    // Ukuran tulisan 20 pixel.
                    fontSize: 20,

                    // Membuat tulisan menjadi tebal.
                    fontWeight: FontWeight.bold,
                  ),
                ),

                // Menampilkan tanggal berita.
                subtitle: Text(

                  // Mengambil tanggal berdasarkan index.
                  // Jika tidak ada data, tampilkan "Tidak ada data".
                  dataBerita[index]['published_at'] ??
                      "Tidak ada data",

                  // Tanggal hanya ditampilkan dalam 1 baris.
                  maxLines: 1,

                  // Mengatur ukuran tulisan tanggal menjadi 16 pixel.
                  style: const TextStyle(fontSize: 16),
                ),

                // Menampilkan gambar berita di sebelah kiri.
                leading: Image.network(

                  // Mengambil URL gambar dari data API.
                  // Jika tidak ada gambar, menggunakan gambar cadangan.
                  dataBerita[index]['image'] ??
                      'http://cdn.pixabay.com/photo/2018/03/17/20/51/white-buildings-3235135__340.jpg',

                  // Membuat gambar memenuhi area yang tersedia.
                  fit: BoxFit.cover,

                  // Menentukan lebar gambar sebesar 100 pixel.
                  width: 100,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}