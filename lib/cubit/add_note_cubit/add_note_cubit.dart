import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:notester/constants.dart';
import 'package:notester/models/note_model.dart';
part 'add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());
  addNote(NoteMD noteMD) async {
    emit(AddNoteLoading());
    try {
      var notesBox = Hive.box<NoteMD>(kNotesBox);
      emit(AddNoteSuccess());
      await notesBox.add(noteMD);
    } catch (e) {
      emit(AddNoteFailure(errorMessage: e.toString()));
    }
  }
}
