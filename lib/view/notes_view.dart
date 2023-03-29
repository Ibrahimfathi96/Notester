import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notester/constants.dart';
import 'package:notester/cubit/notes_cubit/notes_cubit.dart';
import 'package:notester/view/widgets/add_note_bottom_sheet.dart';
import 'package:notester/view/widgets/custom_search_icon.dart';
import 'package:notester/view/widgets/notes_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NotesCubit(),
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          title: const Text('Notes',
            style: TextStyle(
                fontSize: 28, fontWeight: FontWeight.w300
            ),
          ),
          actions: [
            CustomAppBarIcon(
              onPressed: () {},
              iconData: Icons.search_outlined,)
          ],
        ),
        body: const NotesViewBody(),
        floatingActionButton: FloatingActionButton(
          backgroundColor: kPrimaryColor,
          onPressed: () {
            showModalBottomSheet(
              isScrollControlled: true,
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20)
                  )
              ),
              context: context, builder: (context) {
              return const AddNoteBottomSheet();
            },);
          },
          child: const Icon(Icons.add, size: 36,),
        ),
      ),
    );
  }
}


