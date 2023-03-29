import 'package:flutter/material.dart';
import 'package:notester/view/widgets/add_note_bottom_sheet.dart';
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
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(25) ,
                topRight: Radius.circular(25)
              )
            ),
            context: context, builder: (context) {
            return const AddNoteBottomSheet();
          },);
        },
        child: const Icon(Icons.add,size: 36,),
      ),
    );
  }
}


