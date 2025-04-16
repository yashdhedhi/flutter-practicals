import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "Flutter Application",
    home: HomePage(),
  ));
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 33, 159, 243),
      alignment: Alignment.center,
      child: const Text(
        "Hello! Welcome to Flutter Application",
        style: TextStyle(fontSize: 20, color: Colors.white),
      ),
    );
  }
}
