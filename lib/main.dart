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
          title: const Text("List Tile"),
          backgroundColor: Colors.blue,
          titleTextStyle: const TextStyle(color: Colors.white, fontSize: 20),
          centerTitle: true,
        ),
        body: ListView(
          children: [
            ListTile(
              contentPadding: EdgeInsets.all(5),
              title: Text("Taufik"),
              subtitle: Text(
                "Pesan pesan terkirim namun tidak terbalaskan",
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              leading: CircleAvatar(),
              trailing: Text("12:30"),
              tileColor: Colors.amber[50],

              // onCLICK
              // onTap: (){
              //   return
              // },
            ),
            Divider(),
            ListTile(
              title: Text("Taufik"),
              subtitle: Text("Subtitle"),
              leading: CircleAvatar(),
              trailing: Text("12:30"),
            ),
            ListTile(
              title: Text("Taufik"),
              subtitle: Text("Subtitle"),
              leading: CircleAvatar(),
              trailing: Text("12:30"),
            ),
            ListTile(
              title: Text("Taufik"),
              subtitle: Text("Subtitle"),
              leading: CircleAvatar(),
              trailing: Text("12:30"),
            ),
          ],
        ),
      ),
    );
  }
}
