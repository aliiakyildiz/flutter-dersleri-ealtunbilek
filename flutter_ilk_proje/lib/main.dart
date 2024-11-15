import 'package:flutter/material.dart';

void main() {
  runApp(const FirstApp());
}

String _img1 =
    'https://www.log.com.tr/wp-content/uploads/2021/06/rekor-fiyata-satilan-nissan-skyline-gt-r-r34-midnight-purple-ii-9.jpg';

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
          child: Container(
            padding: EdgeInsets.all(20),
            child: Text(
              "Ali",
              style: TextStyle(
                fontSize: 128,
              ),
            ),
            decoration: BoxDecoration(
                color: Colors.amber,
                shape: BoxShape.rectangle,
                border: Border.all(width: 4, color: Colors.blueGrey),
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
                image: DecorationImage(
                  image: NetworkImage(_img1),
                  fit: BoxFit.scaleDown,
                  repeat: ImageRepeat.repeat,
                ),
                boxShadow: const [
                  BoxShadow(
                      color: Colors.grey,
                      offset: Offset(0, 20),
                      blurRadius: 10),
                  BoxShadow(
                      color: Colors.purple,
                      offset: Offset(0, -20),
                      blurRadius: 10),
                ]),
          ),
        ),
      ),
    );
  }
}
