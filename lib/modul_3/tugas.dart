import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Alignment',
      home: Scaffold(
        appBar: AppBar(

          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
          ),

          title: Text('Alignment'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Malang',
                style: TextStyle(fontSize: 30),
              ),
              SizedBox(height: 40),
              Text(
                '25°',
                style: TextStyle(fontSize: 75),
              ),
              SizedBox(height: 50),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Text('Minggu'),
                      Icon(Icons.sunny),
                      Text('20°C'),
                    ],
                  ),
                  Column(
                    children: [
                      Text('Senin'),
                      Icon(Icons.cloudy_snowing),
                      Text('23°C'),
                    ],
                  ),
                  Column(
                    children: [
                      Text('Selasa'),
                      Icon(Icons.cloud),
                      Text('22°C'),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}