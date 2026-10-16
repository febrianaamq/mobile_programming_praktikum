import 'package:flutter/material.dart';
import 'praktikum.dart' as praktikum;
import 'tugas.dart' as tugas;

class Modul1 extends StatelessWidget {
  const Modul1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Modul 1'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Modul 1',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 8),

            const Text(
              'Pengenalan Mobile Programming dan Setup Lingkungan',
              style: TextStyle(fontSize: 16),
            ),

            const SizedBox(height: 30),

            const Text(
              'Pilih Materi',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 15),

            Card(
              child: ListTile(
                leading: const Icon(Icons.code),
                title: const Text('Praktikum'),
                subtitle: const Text('Contoh Kode Program'),
                trailing: const Icon(Icons.arrow_forward_ios),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => praktikum.MyApp(),
                    ),
                  );
                },
              ),
            ),

            Card(
              child: ListTile(
                leading: const Icon(Icons.assignment),
                title: const Text('Tugas'),
                subtitle: const Text('Tugas Praktikum'),
                trailing: const Icon(Icons.arrow_forward_ios),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => tugas.MyApp(),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}