import 'package:flutter/material.dart';

import 'demo_gridview.dart' as gridview;
import 'demo_listview.dart' as listview;
import 'demo_gridview_builder.dart' as gridviewbuilder;
import 'demo_listview_builder.dart' as listviewbuilder;
import 'tugas.dart' as tugas;

class Modul6 extends StatelessWidget {
  const Modul6({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Modul VI'),
        backgroundColor: Colors.amber,
      ),
      body: ListView(
        padding: const EdgeInsets.all(10),
        children: [
          Card(
            child: ListTile(
              leading: const Icon(Icons.grid_view),
              title: const Text('Percobaan 1 - GridView'),
              subtitle: const Text('Demo GridView'),
              trailing: const Icon(Icons.arrow_forward_ios),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => gridview.MyApp(),
                  ),
                );
              },
            ),
          ),
          Card(
            child: ListTile(
              leading: const Icon(Icons.view_list),
              title: const Text('Percobaan 2 - ListView'),
              subtitle: const Text('Demo ListView'),
              trailing: const Icon(Icons.arrow_forward_ios),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => listview.MyApp(),
                  ),
                );
              },
            ),
          ),
          Card(
            child: ListTile(
              leading: const Icon(Icons.grid_4x4),
              title: const Text('Percobaan 3 - GridView.builder'),
              subtitle: const Text('Demo GridView.builder'),
              trailing: const Icon(Icons.arrow_forward_ios),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => gridviewbuilder.MyApp(),
                  ),
                );
              },
            ),
          ),
          Card(
            child: ListTile(
              leading: const Icon(Icons.list_alt),
              title: const Text('Percobaan 4 - ListView.builder'),
              subtitle: const Text('Demo ListView.builder'),
              trailing: const Icon(Icons.arrow_forward_ios),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => listviewbuilder.MyApp(),
                  ),
                );
              },
            ),
          ),
          Card(
            child: ListTile(
              leading: const Icon(Icons.games),
              title: const Text('Tugas'),
              subtitle: const Text('Daftar Game dari API FreeToGame'),
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
    );
  }
}