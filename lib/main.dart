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
      theme: ThemeData(
        brightness: Brightness.dark,
        fontFamily: 'Poppins'
      ),
      home:  const NotesView(),
    );
  }
}


/*Notester  is a play on the words "note" and "tester".
It suggests that the app is a tool for testing or
trying out different types of notes, or that it helps you organize
and keep track of your notes in a comprehensive and thorough way.
Additionally, the name may also imply that the app is designed for people
who take a lot of notes, as in "note-taking enthusiasts*/