import 'package:bloc/bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:note_app/models/note_model.dart';
import 'package:note_app/widget/consts.dart';

import 'add_notes_state.dart';

class AddNotesCubit extends Cubit<AddNotesState> {
  AddNotesCubit() : super(AddNotesInitial());
  addNote(NoteModel note) async {
    emit(AddNotesLoaded());
    try {
      var noteBox = Hive.box<NoteModel>(kNoteox);
      emit(AddNotesLoaded());
      await noteBox.add(note);
    } catch (e) {
      AddNotesError(e.toString());
     
    }
  }
}
