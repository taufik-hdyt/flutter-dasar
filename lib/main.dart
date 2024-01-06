import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: AppBar(
        leading: const Icon(
          Icons.adb,
          color: Colors.white,
        ),
        title: const Text(
          "AppBar",
          style: TextStyle(color: Colors.white),
        ),
        actions: const <Widget>[
          IconButton(
            onPressed: null,
            icon: Icon(Icons.settings),
          ),
          IconButton(onPressed: null, icon: Icon(Icons.agriculture_rounded)),
        ],
        flexibleSpace: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  colors: [Color(0xff0096ff), Color(0xff6610f2)],
                  begin: FractionalOffset.topLeft,
                  end: FractionalOffset.topRight)),
        ),
      ),
    );
  }
}
