import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notester/cubits/notes_cubit/notes_cubit.dart';
import 'package:notester/models/note_model.dart';
import 'package:notester/view/notes_view.dart';
import 'package:notester/view/widgets/custom_search_icon.dart';
import 'package:notester/view/widgets/edit_note_view_body.dart';

class EditNoteView extends StatefulWidget {
  const EditNoteView({Key? key, required this.noteMD}) : super(key: key);
  final NoteMD noteMD;

  @override
  State<EditNoteView> createState() => _EditNoteViewState();
}

class _EditNoteViewState extends State<EditNoteView> {
  String? title,content;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: const Text(
          'Edit Note',
          style: TextStyle(fontSize: 28, fontWeight: FontWeight.w300),
        ),
        actions:  [
          CustomAppBarIcon(
            onPressed: (){
              widget.noteMD.title = title ?? widget.noteMD.title;
              widget.noteMD.content = content ?? widget.noteMD.content;
              widget.noteMD.save();
              BlocProvider.of<NotesCubit>(context).fetchAllNotes();
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const NotesView(),));
            },
            iconData: Icons.check,
          )
        ],
      ),
      body: EditNoteBodyWidget(noteMD: widget.noteMD,),
    );
  }
}
