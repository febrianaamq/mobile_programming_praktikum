import 'package:flutter/material.dart';
import 'demo_sizedbox.dart' as sizedbox;
import 'demo_card.dart' as card;
import 'music_card.dart' as music;

class Modul5 extends StatelessWidget {
  const Modul5({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Modul V'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Modul V',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 8),

            const Text(
              'Widget SizedBox, Spacer, dan Card',
              style: TextStyle(fontSize: 16),
            ),

            const SizedBox(height: 30),

            const Text(
              'Praktikum',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 15),

            Card(
              child: ListTile(
                leading: const Icon(Icons.code),
                title: const Text('Percobaan 1 & 2'),
                subtitle: const Text(
                  'SizedBox dan Spacer',
                ),
                trailing: const Icon(Icons.arrow_forward_ios),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => sizedbox.MyApp(),
                    ),
                  );
                },
              ),
            ),

            Card(
              child: ListTile(
                leading: const Icon(Icons.code),
                title: const Text('Percobaan 3'),
                subtitle: const Text(
                  'Card',
                ),
                trailing: const Icon(Icons.arrow_forward_ios),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => card.MyApp(),
                    ),
                  );
                },
              ),
            ),

            const SizedBox(height: 15),

            const Text(
              'Tugas',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 15),

            Card(
              child: ListTile(
                leading: const Icon(Icons.assignment),
                title: const Text('Music Card'),
                subtitle: const Text(
                  'Informasi musik yang sedang diputar',
                ),
                trailing: const Icon(Icons.arrow_forward_ios),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => music.MyApp(),
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