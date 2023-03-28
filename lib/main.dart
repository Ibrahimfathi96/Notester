import 'package:flutter/material.dart';

void main() {
  runApp(Notester());
}

class Notester extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}
