import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final List<Color> myColor = [
    Colors.red,
    Colors.yellow,
    Colors.green,
    Colors.blue
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("List View"),
          backgroundColor: Colors.blue,
        ),
        // menambahkan list view
        // body: ListView.builder(
        //   itemCount: myColor.length,
        //   itemBuilder: (context, index) {
        //     return Container(
        //       height: 300,
        //       width: 300,
        //       color: myColor[index],
        //     );
        //   },
        // ),

        // menambahkan spasi dan warna spasinya
        body: ListView.separated(
          separatorBuilder: (context, index) {
            return Container(
              height: 10,
              color: Colors.black,
            );
          },
          itemCount: myColor.length,
          itemBuilder: (context, index) {
            // Mengembalikan return Container =============
            // return Container(
            //   height: 300,
            //   width: 300,
            //   color: myColor[index],
            // );

            // Mengembalikan return Text =============
            return Text("Hallo");
          },
        ),
      ),
    );
  }
}
