import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notester/cubits/notes_cubit/notes_cubit.dart';
import 'package:notester/models/note_model.dart';
import 'package:notester/view/edit_note_view.dart';

class NoteItemWidget extends StatelessWidget {
  const NoteItemWidget({Key? key, required this.noteMD}) : super(key: key);
  final NoteMD noteMD;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => const EditNoteView(),
            ));
      },
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 8),
        decoration: BoxDecoration(
            color: Colors.red, borderRadius: BorderRadius.circular(20)),
        child: Slidable(
          startActionPane: ActionPane(
            extentRatio: 0.22,
            motion: const DrawerMotion(),
            children: [
              SlidableAction(
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(20),
                    bottomLeft: Radius.circular(20)),
                onPressed: (context) {
                  noteMD.delete();
                  BlocProvider.of<NotesCubit>(context).fetchAllNotes();
                },
                backgroundColor: const Color(0xFFFE4A49),
                foregroundColor: Colors.black,
                icon: FontAwesomeIcons.trash,
                label: 'Delete',
                spacing: 10,
              ),
            ],
          ),
          child: Container(
            padding: const EdgeInsets.all(12),
            width: double.infinity,
            decoration: BoxDecoration(
                color: Color(noteMD.color), borderRadius: BorderRadius.circular(20)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                 Padding(
                  padding: const EdgeInsets.only(bottom: 12.0),
                  child: Text(
                    noteMD.title,
                    style: const TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 26,
                        color: Colors.black),
                  ),
                ),
                 Padding(
                  padding: const EdgeInsets.only(bottom: 6.0),
                  child: Text(
                    noteMD.content,
                    style: TextStyle(
                        fontWeight: FontWeight.w300,
                        fontSize: 20,
                        color: Colors.black.withOpacity(.6)),
                  ),
                ),
                Text(noteMD.dateTime,
                    textAlign: TextAlign.end,
                    style:TextStyle(
                        fontWeight: FontWeight.w300,
                        fontSize: 16,
                        color: Colors.black.withOpacity(.6)))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
