import 'package:flutter/material.dart';
import 'package:notester/view/widgets/custom_search_icon.dart';
import 'package:notester/view/widgets/notes_view_body.dart';

class NotesView extends StatelessWidget {
   NotesView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: const Text('Notes',
          style: TextStyle(
            fontSize: 28,fontWeight: FontWeight.w300
          ),
        ),
        actions: const [
          CustomSearchIcon()
        ],
      ),
      body: NotesViewBody(),
    );
  }
}

