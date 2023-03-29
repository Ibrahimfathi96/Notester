import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notester/cubit/add_note_cubit/add_note_cubit.dart';
import 'package:notester/models/note_model.dart';

import 'custom_button.dart';
import 'custom_text_field.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({super.key});

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  String title = '';
  String content = '';
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autoValidateMode = AutovalidateMode.disabled;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autoValidateMode,
      child: Column(
        children: [
          const SizedBox(
            height: 32,
          ),
          TextFieldWidget(
            onSaved: (value) {
              title = value!;
            },
            hintText: 'title',
          ),
          const SizedBox(
            height: 20,
          ),
          TextFieldWidget(
            onSaved: (value) {
              content = value!;
            },
            hintText: 'content',
            maxLines: 5,
          ),
          const SizedBox(
            height: 50,
          ),
          ButtonWidget(
            onTap:(){
              if(formKey.currentState!.validate()){
                NoteMD noteMD = NoteMD(title: title, content: content, dateTime: DateTime.now().toString(), color: Colors.blue.value);
                formKey.currentState!.save();
                BlocProvider.of<AddNoteCubit>(context).addNote(noteMD);
              }else{
                autoValidateMode = AutovalidateMode.always;
                setState(() {});
              }
            },
          ),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}