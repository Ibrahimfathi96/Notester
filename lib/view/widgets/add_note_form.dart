import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:notester/models/note_model.dart';
import '../../cubits/add_note_cubit/add_note_cubit.dart';
import 'colors_list_view.dart';
import 'custom_button.dart';
import 'custom_text_field.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({super.key});

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  String? title;
  String? content;
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
              title = value;
            },
            hintText: 'title',
          ),
          const SizedBox(
            height: 20,
          ),
          TextFieldWidget(
            onSaved: (value) {
              content = value;
            },
            hintText: 'content',
            maxLines: 5,
          ),
          const SizedBox(
            height: 10,
          ),
          const ColorsListView(),
          const SizedBox(
            height: 10,
          ),
          BlocBuilder<AddNoteCubit, AddNoteState>(
            builder: (context, state) {
              return ButtonWidget(
                isLoading: state is AddNoteLoading ? true : false,
                onTap: () {
                  if (formKey.currentState!.validate()) {
                    formKey.currentState!.save();
                    var currentDate = DateTime.now();
                    var formattedTime = DateFormat('hh:mm').format(currentDate);
                    var formattedDate = DateFormat.yMMMEd().format(currentDate);
                    var noteMD = NoteMD(
                        title: title!,
                        content: content!,
                        dateTime:'$formattedDate $formattedTime',
                        color: Colors.blue.value);
                    BlocProvider.of<AddNoteCubit>(context).addNote(noteMD);
                  } else {
                    autoValidateMode = AutovalidateMode.always;
                    setState(() {});
                  }
                },
              );
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
