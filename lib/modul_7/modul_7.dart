import 'package:flutter/material.dart';

import 'demo_navigasi_pageroute/main.dart' as percobaan1;
import 'demo_navigasi/main.dart' as percobaan2;
import 'tugas/main.dart' as tugas;

class Modul7 extends StatelessWidget {
  const Modul7({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Modul VII'),
        backgroundColor: Colors.amber,
      ),
      body: ListView(
        padding: const EdgeInsets.all(10),
        children: [
          Card(
            child: ListTile(
              leading: const Icon(Icons.navigation),
              title: const Text(
                'Percobaan 1 - MaterialPageRoute',
              ),
              subtitle: const Text(
                'Navigasi menggunakan MaterialPageRoute',
              ),
              trailing: const Icon(Icons.arrow_forward_ios),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const percobaan1.MyApp(),
                  ),
                );
              },
            ),
          ),

          Card(
            child: ListTile(
              leading: const Icon(Icons.route),
              title: const Text(
                'Percobaan 2 - Named Route',
              ),
              subtitle: const Text(
                'Navigasi menggunakan Named Route',
              ),
              trailing: const Icon(Icons.arrow_forward_ios),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const percobaan2.MyApp(),
                  ),
                );
              },
            ),
          ),
          Card(
            child: ListTile(
              leading: const Icon(Icons.assignment),
              title: const Text(
                'Tugas',
              ),
              subtitle: const Text(
                'Aplikasi dua halaman dengan Named Route',
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