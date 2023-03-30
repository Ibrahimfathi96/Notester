import 'package:flutter/material.dart';
import 'package:notester/constants.dart';
import 'package:notester/cubits/notes_cubit/notes_cubit.dart';
import 'package:notester/models/note_model.dart';
import 'package:notester/simple_bloc_observer.dart';
import 'package:notester/view/notes_view.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() async {
  await Hive.initFlutter();
  Bloc.observer = SimpleBlocObserver();
  Hive.registerAdapter(NoteMDAdapter());
  await Hive.openBox<NoteMD>(kNotesBox);
  runApp(const Notester());
}

class Notester extends StatelessWidget {
  const Notester({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NotesCubit(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            brightness: Brightness.dark,
            fontFamily: 'Poppins'
        ),
        home: const NotesView(),
      ),
    );
  }
}


/*Notester  is a play on the words "note" and "tester".
It suggests that the app is a tool for testing or
trying out different types of notes, or that it helps you organize
and keep track of your notes in a comprehensive and thorough way.
Additionally, the name may also imply that the app is designed for people
who take a lot of notes, as in "note-taking enthusiasts*/