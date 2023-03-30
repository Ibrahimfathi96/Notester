import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:notester/constants.dart';
import 'package:notester/models/note_model.dart';
part 'add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());
  Color color = const Color(0xffe76f51);
  addNote(NoteMD noteMD) async {
    noteMD.color = color.value;
    emit(AddNoteLoading());
    try {
      var notesBox = Hive.box<NoteMD>(kNotesBox);
      await notesBox.add(noteMD);
      emit(AddNoteSuccess());
    } catch (e) {
      emit(AddNoteFailure(errorMessage: e.toString()));
    }
  }
}
