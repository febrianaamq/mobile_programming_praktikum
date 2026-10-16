import 'package:flutter/material.dart';
import 'modul_1/modul_1.dart';
import 'modul_2/modul_2.dart';
import 'modul_3/modul_3.dart';
import 'modul_4/modul_4.dart';
import 'modul_5/modul_5.dart';
import 'modul_6/modul_6.dart';
import 'modul_7/modul_7.dart';
import 'modul_8/modul_8.dart';
import 'modul_9/modul_9.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mobile Programming'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          const Text(
            'Dashboard',
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 8),

          const Text(
            'Pilih modul yang ingin dipelajari',
            style: TextStyle(fontSize: 16),
          ),

          const SizedBox(height: 20),

          // MODUL 1
          Card(
            child: ListTile(
              leading: const Icon(Icons.looks_one),
              title: const Text('Modul 1'),
              subtitle: const Text(
                'Pengenalan Mobile Programming dan Setup Lingkungan',
              ),
              trailing: const Icon(Icons.arrow_forward_ios),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Modul1(),
                  ),
                );
              },
            ),
          ),

          // MODUL 2
          Card(
            child: ListTile(
              leading: const Icon(Icons.looks_two),
              title: const Text('Modul 2'),
              subtitle: const Text(
                'Pertemuan II – Widget Row dan Column',
              ),
              trailing: const Icon(Icons.arrow_forward_ios),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Modul2(),
                  ),
                );
              },
            ),
          ),

          // MODUL 3
          Card(
            child: ListTile(
              leading: const Icon(Icons.looks_3),
              title: const Text('Modul 3'),
              subtitle: const Text(
                'Widget Alignment',
              ),
              trailing: const Icon(Icons.arrow_forward_ios),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Modul3(),
                  ),
                );
              },
            ),
          ),

          // MODUL 4
          Card(
            child: ListTile(
              leading: const Icon(Icons.looks_4),
              title: const Text('Modul 4'),
              subtitle: const Text(
                'Pertemuan IV – Widget Flexible dan Expanded',
              ),
              trailing: const Icon(Icons.arrow_forward_ios),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Modul4(),
                  ),
                );
              },
            ),
          ),

          // MODUL 5
          Card(
            child: ListTile(
              leading: const Icon(Icons.looks_5),
              title: const Text('Modul 5'),
              subtitle: const Text(
                'Widget SizedBox, Spacer, dan Card',
              ),
              trailing: const Icon(Icons.arrow_forward_ios),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Modul5(),
                  ),
                );
              },
            ),
          ),

          // MODUL 6
          Card(
            child: ListTile(
              leading: const Icon(Icons.looks_6),
              title: const Text('Modul 6'),
              subtitle: const Text(
                'Widget GridView, ListView, GridView.builder, dan ListView.builder',
              ),
              trailing: const Icon(Icons.arrow_forward_ios),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Modul6(),
                  ),
                );
              },
            ),
          ),

          // MODUL 7
          Card(
            child: ListTile(
              leading: const Icon(Icons.filter_7),
              title: const Text('Modul 7'),
              subtitle: const Text(
                'Navigasi Antar Halaman Menggunakan MaterialPageRoute dan Named Route',
              ),
              trailing: const Icon(Icons.arrow_forward_ios),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Modul7(),
                  ),
                );
              },
            ),
          ),

          // MODUL 8
          Card(
            child: ListTile(
              leading: const Icon(Icons.filter_8),
              title: const Text('Modul 8'),
              subtitle: const Text(
                'Navigasi Antar Halaman dengan Mengirimkan Argumen Menggunakan Named Route',
              ),
              trailing: const Icon(Icons.arrow_forward_ios),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Modul8(),
                  ),
                );
              },
            ),
          ),

          // MODUL 9
          Card(
            child: ListTile(
              leading: const Icon(Icons.filter_9),
              title: const Text('Modul 9'),
              subtitle: const Text(
                'StatefulWidget',
              ),
              trailing: const Icon(Icons.arrow_forward_ios),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Modul9(),
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