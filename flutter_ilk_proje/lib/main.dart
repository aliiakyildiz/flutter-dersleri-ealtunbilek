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
        scaffoldBackgroundColor: Colors.grey[100],
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
        body: const Text(
          "Hello Word",
          style: TextStyle(
            color: Colors.red,
            fontSize: 24,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
