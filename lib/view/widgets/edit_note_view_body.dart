import 'package:flutter/material.dart';
import 'package:notester/models/note_model.dart';
import 'custom_text_field.dart';
import 'edit_note_colors_list.dart';

class EditNoteBodyWidget extends StatefulWidget {
  const EditNoteBodyWidget({Key? key, required this.noteMD}) : super(key: key);
  final NoteMD noteMD;

  @override
  State<EditNoteBodyWidget> createState() => _EditNoteBodyWidgetState();
}

class _EditNoteBodyWidgetState extends State<EditNoteBodyWidget> {

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        children: [
          const SizedBox(height: 32,),
          TextFieldWidget(
            onChanged:(value){
              widget.noteMD.title = value;
            },
            hintText: widget.noteMD.title,

          ),
          const SizedBox(height: 20,),
          TextFieldWidget(
            onChanged: (value){
              widget.noteMD.content = value;
            },
            hintText: widget.noteMD.content, maxLines: 5,),
          const SizedBox(height: 20,),
          EditNotesColorsList(
            noteMD:widget.noteMD,
          )
        ],
      ),
    );
  }
}

