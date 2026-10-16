// Digunakan untuk mengubah data JSON menjadi data Dart.
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

  // Membuat tampilan utama aplikasi.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Judul aplikasi.
      title: 'Daftar Game',

      // Mengatur tema aplikasi.
      theme: ThemeData(
        // Menggunakan warna amber sebagai warna utama.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.amber),

        // Menggunakan Material Design 3.
        useMaterial3: true,
      ),

      // Menampilkan halaman utama.
      home: const MyHomePage(title: 'Daftar Game'),
    );
  }
}

// StatefulWidget digunakan karena data game akan berubah
// setelah data berhasil diambil dari API.
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // Menyimpan judul halaman.
  final String title;

  // Membuat State untuk MyHomePage.
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

// State dari halaman MyHomePage.
class _MyHomePageState extends State<MyHomePage> {

  // List untuk menyimpan data game dari API.
  List dataGame = [];

  // initState dijalankan satu kali saat halaman dibuat.
  @override
  void initState() {
    super.initState();

    // Memanggil fungsi untuk mengambil data game.
    _ambilData();
  }

  // Fungsi untuk mengambil data game dari server.
  Future _ambilData() async {
    try {

      // Mengirim request GET ke API FreeToGame.
      final response = await http.get(
        Uri.parse('https://www.freetogame.com/api/games'),
      );

      // Mengecek apakah request berhasil.
      if (response.statusCode == 200) {

        // Mengubah data JSON dari API menjadi data Dart.
        final data = jsonDecode(response.body);

        // Memasukkan data ke dalam dataGame.
        setState(() {

          // Hanya mengambil 20 data game pertama.
          dataGame = data.take(20).toList();
        });
      } else {

        // Jika request gagal, tampilkan pesan error.
        throw Exception('Gagal load data dari FreeToGame API');
      }
    } catch (e) {

      // Menampilkan error jika terjadi masalah saat mengambil data.
      print('Error: $e');
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

      // ListView.builder digunakan untuk membuat daftar game.
      body: ListView.builder(

        // Jumlah item disesuaikan dengan jumlah data game.
        itemCount: dataGame.length,

        // Membuat setiap item berdasarkan index.
        itemBuilder: (context, index) {

          // Membuat tampilan satu game menggunakan fungsi _listItem().
          return _listItem(

            // Mengambil gambar thumbnail game.
            // Jika tidak ada, menggunakan gambar placeholder.
            dataGame[index]['thumbnail'] ??
                'https://via.placeholder.com/150',

            // Mengambil judul game.
            // Jika tidak ada, menampilkan "Tidak ada judul".
            dataGame[index]['title'] ?? 'Tidak ada judul',

            // Mengambil genre game.
            // Jika tidak ada, menampilkan "Tidak ada genre".
            dataGame[index]['genre'] ?? 'Tidak ada genre',

            // Mengambil tanggal rilis game.
            // Jika tidak ada, menampilkan "Tidak ada tanggal".
            dataGame[index]['release_date'] ??
                'Tidak ada tanggal',
          );
        },
      ),
    );
  }
}

// Fungsi untuk membuat tombol "Baca Info".
Container _tombolBaca() {
  return Container(

    // Memberikan jarak di dalam tombol.
    padding: const EdgeInsets.symmetric(
      vertical: 5,
      horizontal: 15,
    ),

    // Mengatur tampilan tombol.
    decoration: BoxDecoration(

      // Warna background tombol orange.
      color: Colors.orange,

      // Membuat sudut tombol melengkung.
      borderRadius: BorderRadius.circular(15),
    ),

    // Tulisan yang ada di dalam tombol.
    child: const Text(
      'Baca Info',

      // Mengubah warna tulisan menjadi putih.
      style: TextStyle(color: Colors.white),
    ),
  );
}

// Fungsi untuk membuat satu item game.
// url    = alamat gambar game.
// judul  = nama/judul game.
// genre  = genre game.
// rilis  = tanggal rilis game.
Container _listItem(
    String url,
    String judul,
    String genre,
    String rilis,
    ) {
  return Container(

    // Memberikan jarak antara isi dengan tepi Container.
    padding: const EdgeInsets.all(15),

    // Memberikan jarak di bagian bawah antar item game.
    margin: const EdgeInsets.only(bottom: 10),

    // Mengatur tampilan Container.
    decoration: BoxDecoration(

      // Background Container dibuat putih.
      color: Colors.white,

      // Membuat sudut Container melengkung.
      borderRadius: BorderRadius.circular(15),
    ),

    // Row digunakan untuk menyusun gambar dan informasi game
    // secara mendatar.
    child: Row(
      children: [

        // Membuat sudut gambar menjadi melengkung.
        ClipRRect(
          borderRadius: BorderRadius.circular(5),

          // Mengambil gambar dari internet.
          child: Image.network(
            url,

            // Lebar gambar 70 pixel.
            width: 70,

            // Tinggi gambar 70 pixel.
            height: 70,

            // Gambar disesuaikan agar memenuhi area yang tersedia.
            fit: BoxFit.cover,
          ),
        ),

        // Memberikan jarak 10 pixel antara gambar dan informasi game.
        const SizedBox(width: 10),

        // Expanded membuat bagian informasi menggunakan
        // ruang yang tersisa di dalam Row.
        Expanded(
          child: Column(

            // Isi Column dimulai dari sebelah kiri.
            crossAxisAlignment: CrossAxisAlignment.start,

            // Isi informasi game disusun dari atas ke bawah.
            children: [

              // Menampilkan judul game.
              Text(
                judul,
                style: const TextStyle(
                  // Ukuran tulisan 18 pixel.
                  fontSize: 18,

                  // Membuat judul menjadi tebal.
                  fontWeight: FontWeight.bold,
                ),
              ),

              // Memberikan jarak 5 pixel setelah judul.
              const SizedBox(height: 5),

              // Row digunakan untuk menampilkan informasi game
              // dan tombol Baca Info secara mendatar.
              Row(
                mainAxisAlignment:
                MainAxisAlignment.spaceBetween,
                children: [

                  // Column digunakan untuk menampilkan
                  // genre dan tanggal rilis secara vertikal.
                  Column(
                    crossAxisAlignment:
                    CrossAxisAlignment.start,
                    children: [

                      // Menampilkan genre game.
                      Text(
                        genre,
                        style:
                        const TextStyle(color: Colors.grey),
                      ),

                      // Memberikan jarak kecil antara genre dan tanggal.
                      const SizedBox(height: 2),

                      // Menampilkan tanggal rilis game.
                      Text(
                        rilis,
                        style:
                        const TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),

                  // Menampilkan tombol "Baca Info".
                  _tombolBaca(),
                ],
              ),
            ],
          ),
        ),
      ],
    ),
  );
}