import 'package:flutter/material.dart';
import 'package:notester/view/notes_view.dart';

void main() {
  runApp(const Notester());
}

class Notester extends StatelessWidget {
  const Notester({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: const NotesView(),
    );
  }
}
