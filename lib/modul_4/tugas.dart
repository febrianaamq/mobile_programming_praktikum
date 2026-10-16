import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Control Bar Pemutar Musik',
      theme: ThemeData.dark(),
      home: Scaffold(
        appBar: AppBar(

          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
          ),

          title: Text('Control Bar Pemutar Musik'),
        ),
        body: Center(
          child: Text(
            'Music Player',
            style: TextStyle(fontSize: 30),
          ),
        ),
        bottomNavigationBar: Container(
          padding: EdgeInsets.symmetric(
            horizontal: 8,
            vertical: 10,
          ),
          color: Colors.black54,
          child: Row(
            children: [
              Expanded(
                child: Icon(
                  Icons.shuffle,
                  color: Colors.white,
                ),
              ),
              Expanded(
                child: Icon(
                  Icons.skip_previous,
                  color: Colors.white,
                ),
              ),
              Flexible(
                flex: 2,
                fit: FlexFit.tight,
                child: Icon(
                  Icons.play_circle_fill,
                  color: Colors.white,
                ),
              ),
              Expanded(
                child: Icon(
                  Icons.skip_next,
                  color: Colors.white,
                ),
              ),
              Expanded(
                child: Icon(
                  Icons.repeat,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}