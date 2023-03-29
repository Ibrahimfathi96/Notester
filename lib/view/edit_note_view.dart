import 'package:flutter/material.dart';
import 'package:notester/view/widgets/custom_search_icon.dart';
import 'package:notester/view/widgets/edit_note_view_body.dart';

class EditNoteView extends StatelessWidget {
  const EditNoteView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: const Text(
          'Notes',
          style: TextStyle(fontSize: 28, fontWeight: FontWeight.w300),
        ),
        actions: [
          CustomSearchIcon(
            iconData: Icons.check,
          )
        ],
      ),
      body: const EditNoteBodyWidget(),
    );
  }
}
