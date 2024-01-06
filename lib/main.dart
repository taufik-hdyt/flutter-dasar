import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            title: const Text("Tab Bar"),
            bottom: const TabBar(tabs: <Widget>[
              Tab(
                icon: Icon(Icons.chat),
                text: "Chat",
              ),
              Tab(
                icon: Icon(Icons.comment),
                text: "Comments",
              ),
              Tab(
                icon: Icon(Icons.delete),
                text: "Delete",
              ),
            ]),
          ),
          body: const TabBarView(
            children: <Widget>[
              Center(
                child: Text("Tab satu"),
              ),
              Center(
                child: Text("Tab dua"),
              ),
              Center(
                child: Text("Tab 3"),
              ),
              Center(
                child: Text("Tab 4"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
