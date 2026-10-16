import 'package:flutter/material.dart';

import 'demo_navigasi_namedroute/main.dart' as percobaan;
import 'navigasi_argumen/main.dart' as tugas;

class Modul8 extends StatelessWidget {
  const Modul8({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Modul VIII'),
        backgroundColor: Colors.amber,
      ),
      body: ListView(
        padding: const EdgeInsets.all(10),
        children: [
          Card(
            child: ListTile(
              leading: const Icon(Icons.route),
              title: const Text(
                'Percobaan 1 - Named Route dengan Argumen',
              ),
              subtitle: const Text(
                'Mengirim data antar halaman menggunakan arguments',
              ),
              trailing: const Icon(Icons.arrow_forward_ios),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const percobaan.MyApp(),
                  ),
                );
              },
            ),
          ),
          Card(
            child: ListTile(
              leading: const Icon(Icons.games),
              title: const Text('Tugas'),
              subtitle: const Text(
                'Informasi game dari API FreeToGame',
              ),
              trailing: const Icon(Icons.arrow_forward_ios),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const tugas.MyApp(),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}