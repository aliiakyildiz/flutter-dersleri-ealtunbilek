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
          backgroundColor: Colors.yellow,
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
          body: Container(
            color: Colors.purple,
            // child: Text(
            //   "Ali" * 2,
            //   textAlign: TextAlign.center,
            // ),
            constraints: BoxConstraints(
                minHeight: 100, minWidth: 100, maxHeight: 200, maxWidth: 200),
          )),
    );
  }
}
