import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Color color1 = Colors.blue;
  Color color2 = Colors.yellow;
  Color targetColor = Colors.green;
  bool isAccepted = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Drag and Drop"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Draggable<Color>(
                  data: color1,
                  child: SizedBox(
                    width: 100,
                    height: 100,
                    child: Material(
                      color: color1,
                      shape: StadiumBorder(),
                    ),
                  ),
                  childWhenDragging: SizedBox(
                    width: 100,
                    height: 100,
                    child: Material(
                      color: Colors.black12,
                      shape: StadiumBorder(),
                      elevation: 3,
                    ),
                  ),
                  feedback: SizedBox(
                    width: 100,
                    height: 100,
                    child: Material(
                      color: Colors.blue,
                      shape: StadiumBorder(),
                      elevation: 3,
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
