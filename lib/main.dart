import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Image"),
        ),
        body: Center(
          child: Container(
            width: 400,
            height: 500,
            color: Colors.amber,
            child: const Image(
              fit: BoxFit.contain,
              // image: AssetImage("assets/images/profile.png")
              image: NetworkImage(
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSUoEMz5_7_SCh1OKUXB-5IIb48bpM3t8hHd9p-SxYUWQ&s"),
            ),
          ),
        ),
      ),
    );
  }
}
