import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Row and Column',
      home: Scaffold(
        appBar: AppBar(

          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
          ),

          title: Text('Row and Column'),
        ),
        body: const Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  KotakBiruJempol(warna: Colors.blue, teks: 'Kotak 1'),
                  SizedBox(width: 20),
                  KotakBiruJempol(warna: Color.fromRGBO(135, 175, 76, 1), teks: 'Kotak 2'),
                ],
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  KotakBiruJempol(warna: Colors.orange, teks: 'Kotak 3'),
                  SizedBox(width: 20),
                  KotakBiruJempol(warna: Colors.purple, teks: 'Kotak 4'),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class KotakBiruJempol extends StatelessWidget {
  final Color warna;
  final String teks;

  const KotakBiruJempol({super.key, required this.warna, required this.teks});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 100,
          height: 100,
          decoration: BoxDecoration(
            color: warna,
            border: Border.all(color: Colors.black, width: 2),
            borderRadius: BorderRadius.circular(12),
          ),
          child: const Icon(Icons.favorite, color: Colors.red, size: 40),
        ),
        const SizedBox(height: 8),
        Text(teks),
      ],
    );
  }
}