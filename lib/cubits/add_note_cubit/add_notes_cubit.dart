import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notsapp/constants/constants.dart';
import 'package:notsapp/cubits/add_note_cubit/add_note_state.dart';
import 'package:notsapp/models/note_model.dart';
import 'package:notsapp/cubits/notes_cubit/notes_cubit.dart';

class AddNotesCubit extends Cubit<AddNotesState> {
  AddNotesCubit() : super(AddNoteInitial());

  addNote(NoteModel note, NotesCubit notesCubit) async {
    emit(AddNoteLoading());
    try {
      var notesBox = Hive.box<NoteModel>(kNotesBox);
      await notesBox.add(note);
      notesCubit.fetchAllNotes();  // نجلب كل الملاحظات بعد الإضافة
      emit(AddNoteSuccess());
    } catch (e) {
      emit(AddNoteFailure(e.toString()));
    }
  }
}
