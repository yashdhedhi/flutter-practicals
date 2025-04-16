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
    return Scaffold(
      appBar: AppBar(title: Text("My Application")),
      body: Center(
        child: Container(
          width: 100,
          height: 100,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.lightBlue,
                blurRadius: 15,
                offset: Offset(2.0, 10.0),
              ),
            ],
          ),
          child: Text("Welcome"),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(title: Text("This is my application")),
      body: Center(
        child: Text("This is my application body"),
      ),
    ),
  ));
}
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(title: Text("Icon Widget Example")),
      body: Center(
        child: Icon(
          Icons.favorite,
          size: 50.0,
          color: Colors.blue,
        ),
      ),
    ),
  ));
}
