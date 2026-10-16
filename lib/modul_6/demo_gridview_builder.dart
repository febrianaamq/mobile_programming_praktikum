// Digunakan untuk mengubah data JSON menjadi data Dart.
import 'dart:convert';

// Library utama Flutter untuk membuat tampilan aplikasi.
import 'package:flutter/material.dart';

// Library HTTP untuk mengambil data dari API.
import 'package:http/http.dart' as http;

// Fungsi utama untuk menjalankan aplikasi.
void main() {
  runApp(const MyApp());
}

// Widget utama aplikasi.
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // Membuat tampilan utama aplikasi.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Judul aplikasi.
      title: 'Demo GridView.builder',

      // Mengatur tema aplikasi.
      theme: ThemeData(
        // Membuat warna utama berdasarkan warna amber.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.amber),

        // Menggunakan Material Design 3.
        useMaterial3: true,
      ),

      // Halaman yang pertama kali ditampilkan.
      home: const MyHomePage(title: 'Demo GridView.builder'),
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

  // initState dijalankan satu kali ketika halaman pertama kali dibuat.
  @override
  void initState() {
    super.initState();

    // Memanggil fungsi untuk mengambil data berita dari API.
    _ambilData();
  }

  // Fungsi untuk mengambil data dari API.
  Future _ambilData() async {
    try {

      // Mengirim request GET ke alamat API.
      final response = await http.get(
        Uri.parse(
          'https://jakpost.vercel.app/api/category/business/tech',
        ),
      );

      // Mengecek apakah request berhasil.
      // Status code 200 berarti data berhasil didapatkan.
      if (response.statusCode == 200) {

        // Mengubah data JSON dari API menjadi data Dart.
        final data = jsonDecode(response.body);

        // Mengubah isi dataBerita dengan data posts dari API.
        setState(() {
          dataBerita = data['posts'];
        });
      } else {

        // Jika request gagal, tampilkan pesan error.
        throw Exception('Gagal load data');
      }
    } catch (e) {

      // Menampilkan error jika terjadi masalah saat mengambil data.
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

        // Judul diambil dari variabel title milik MyHomePage.
        title: Text(widget.title),
      ),

      // Memberikan jarak 8 pixel di sekitar GridView.
      body: Padding(
        padding: const EdgeInsets.all(8),

        // GridView.builder digunakan untuk membuat grid
        // berdasarkan jumlah data yang tersedia.
        child: GridView.builder(

          // Mengatur bentuk dan jarak setiap item dalam grid.
          gridDelegate:
          const SliverGridDelegateWithFixedCrossAxisCount(

            // Mengatur perbandingan lebar dan tinggi setiap item.
            childAspectRatio: 1.25,

            // Membuat 2 kolom dalam satu baris.
            crossAxisCount: 2,

            // Jarak antar item secara vertikal.
            mainAxisSpacing: 10,

            // Jarak antar item secara horizontal.
            crossAxisSpacing: 10,
          ),

          // Jumlah item disesuaikan dengan jumlah data berita.
          itemCount: dataBerita.length,

          // Membuat setiap item berdasarkan index data berita.
          itemBuilder: (context, index) {

            // Membuat sudut item menjadi melengkung.
            return ClipRRect(
              borderRadius: BorderRadius.circular(15),

              // GridTile digunakan untuk menyusun gambar
              // dan judul berita dalam satu kotak.
              child: GridTile(

                // Bagian bawah item digunakan untuk menampilkan judul berita.
                footer: SizedBox(

                  // Menentukan tinggi bagian judul sebesar 65 pixel.
                  height: 65,

                  // GridTileBar digunakan untuk membuat area judul.
                  child: GridTileBar(

                    // Memberikan warna hitam transparan pada bagian judul.
                    backgroundColor: Colors.black26.withAlpha(175),

                    // Menampilkan judul berita dari data API.
                    title: Text(

                      // Mengambil title berdasarkan index.
                      // Jika title kosong/null, akan menggunakan "Tanpa judul".
                      dataBerita[index]['title'] ?? 'Tanpa judul',

                      // Judul maksimal ditampilkan dalam 3 baris.
                      maxLines: 3,

                      // Jika tulisan terlalu panjang,
                      // bagian akhirnya diganti menjadi "...".
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ),

                // Bagian utama GridTile menampilkan gambar berita.
                child: Image(

                  // Mengambil gambar dari URL yang diberikan oleh API.
                  image: NetworkImage(

                    // Mengambil alamat gambar berdasarkan index.
                    // Jika tidak ada gambar, menggunakan gambar cadangan.
                    dataBerita[index]['image'] ??
                        'http://cdn.pixabay.com/photo/2018/03/17/20/51/white-buildings-3235135__340.jpg',
                  ),

                  // Membuat gambar memenuhi area kotak.
                  fit: BoxFit.cover,
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}