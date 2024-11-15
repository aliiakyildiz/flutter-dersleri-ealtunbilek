import 'package:flutter/material.dart';

void main() {
  runApp(const FirstApp());
}

class FirstApp extends StatelessWidget {
  const FirstApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: const AppBarTheme(color: Colors.teal),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text("AppBar"),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            debugPrint("Tıklandı");
          },
          backgroundColor: Colors.red,
          child: const Icon(
            Icons.access_time,
            color: Colors.cyan,
          ),
        ),
        body: Center(
          widthFactor: 3,
          heightFactor: 3,
          child: Container(
            width: 100,
            height: 100,
            color: Colors.red,
            child: Text("Ali"),
          ),
        ),
      ),
    );
  }
}
