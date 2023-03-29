import 'package:flutter/material.dart';
import 'package:notester/view/widgets/custom_search_icon.dart';
import 'package:notester/view/widgets/edit_note_view_body.dart';

class EditNoteView extends StatelessWidget {
  const EditNoteView({Key? key}) : super(key: key);

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
        actions: const [
          CustomSearchIcon(
            iconData: Icons.check,
          )
        ],
      ),
      body: const EditNoteBodyWidget(),
    );
  }
}
