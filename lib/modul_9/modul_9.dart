import 'package:flutter/material.dart';

import 'counter_app.dart' as counter;
import 'like_button.dart' as like;
import 'tasbih_app.dart' as tasbih;

class Modul9 extends StatelessWidget {
  const Modul9({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Modul IX'),
        backgroundColor: Colors.amber,
      ),
      body: ListView(
        padding: const EdgeInsets.all(10),
        children: [
          Card(
            child: ListTile(
              leading: const Icon(Icons.add_circle),
              title: const Text(
                'Percobaan 1 - Counter App',
              ),
              subtitle: const Text(
                'Memahami StatefulWidget dan setState()',
              ),
              trailing: const Icon(Icons.arrow_forward_ios),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const counter.MyApp(),
                  ),
                );
              },
            ),
          ),

          Card(
            child: ListTile(
              leading: const Icon(Icons.favorite),
              title: const Text(
                'Percobaan 2 - Like Button',
              ),
              subtitle: const Text(
                'Mengubah state tombol Like dan jumlah Like',
              ),
              trailing: const Icon(Icons.arrow_forward_ios),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const like.MyApp(),
                  ),
                );
              },
            ),
          ),

          Card(
            child: ListTile(
              leading: const Icon(Icons.fingerprint),
              title: const Text(
                'Tugas - Tasbih Digital',
              ),
              subtitle: const Text(
                'Tasbih digital dengan circular progress',
              ),
              trailing: const Icon(Icons.arrow_forward_ios),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const tasbih.MyApp(),
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