import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notester/view/widgets/note_item_widget.dart';

import '../../cubits/notes_cubit/notes_cubit.dart';
import '../../models/note_model.dart';

class NotesViewBody extends StatefulWidget {
  const NotesViewBody({super.key});

  @override
  State<NotesViewBody> createState() => _NotesViewBodyState();
}

class _NotesViewBodyState extends State<NotesViewBody> {
  @override
  void initState() {
    BlocProvider.of<NotesCubit>(context).fetchAllNotes();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NotesCubit, NotesState>(
      builder: (context, state) {
        List<NoteMD> notes = BlocProvider.of<NotesCubit>(context).notes!;
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
          child: ListView.builder(
            padding: EdgeInsets.zero,
            itemBuilder: (context, index) =>NoteItemWidget(
              noteMD: notes[index],
            ),
            itemCount: notes.length,
          ),
        );
      },
    );
  }
}
