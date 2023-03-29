import 'package:flutter/material.dart';
import 'package:notester/view/widgets/note_item_widget.dart';

import '../../models/note_model.dart';

class NotesViewBody extends StatelessWidget {
  NotesViewBody({Key? key}) : super(key: key);
  final List<NoteItemWidget> notes = [
    NoteItemWidget(
      note: NoteMD(
          title: 'Flutter Tips',
          content: 'build you career with tharwat samy',
          dateTime:
              '${DateTime.now().day}/${DateTime.now().month}/${DateTime.now().year}  ${DateTime.now().hour}:${DateTime.now().minute}',
          color: const Color(0xffFFCC80)),
    ),
    NoteItemWidget(
      note: NoteMD(
          title: 'Flutter Tips',
          content: 'build you career with tharwat samy',
          dateTime:
              '${DateTime.now().day}/${DateTime.now().month}/${DateTime.now().year}  ${DateTime.now().hour}:${DateTime.now().minute}',
          color: Colors.yellowAccent),
    ),
    NoteItemWidget(
      note: NoteMD(
          title: 'Flutter Tips',
          content: 'build you career with tharwat samy',
          dateTime:
              '${DateTime.now().day}/${DateTime.now().month}/${DateTime.now().year}  ${DateTime.now().hour}:${DateTime.now().minute}',
          color: Colors.greenAccent),
    ),
    NoteItemWidget(
      note: NoteMD(
          title: 'Flutter Tips',
          content: 'build you career with tharwat samy',
          dateTime:
              '${DateTime.now().day}/${DateTime.now().month}/${DateTime.now().year}  ${DateTime.now().hour}:${DateTime.now().minute}',
          color: Colors.greenAccent),
    ),
    NoteItemWidget(
      note: NoteMD(
          title: 'Flutter Tips',
          content: 'build you career with tharwat samy',
          dateTime:
              '${DateTime.now().day}/${DateTime.now().month}/${DateTime.now().year}  ${DateTime.now().hour}:${DateTime.now().minute}',
          color: Colors.greenAccent),
    ),
    NoteItemWidget(
      note: NoteMD(
          title: 'Flutter Tips',
          content: 'build you career with tharwat samy',
          dateTime:
              '${DateTime.now().day}/${DateTime.now().month}/${DateTime.now().year}  ${DateTime.now().hour}:${DateTime.now().minute}',
          color: Colors.greenAccent),
    ),
    NoteItemWidget(
      note: NoteMD(
          title: 'Flutter Tips',
          content: 'build you career with tharwat samy',
          dateTime:
              '${DateTime.now().day}/${DateTime.now().month}/${DateTime.now().year}  ${DateTime.now().hour}:${DateTime.now().minute}',
          color: Colors.greenAccent),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 16),
      child: ListView.builder(
        padding: EdgeInsets.zero,
        itemBuilder: (context, index) => notes[index],
        itemCount: notes.length,
      ),
    );
  }
}
