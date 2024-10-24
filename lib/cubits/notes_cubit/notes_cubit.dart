import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notsapp/constants/constants.dart';
import 'package:notsapp/cubits/notes_cubit/notes_state.dart';
import 'package:notsapp/models/note_model.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesIntial());

  List<NoteModel>? notes;

  fetchAllNotes() async {
    var notesBox = Hive.box<NoteModel>(kNotesBox);
    notes = notesBox.values.toList();
    emit(NotesLoaded(notes!));  // نحدث الحالة بعد تحميل الملاحظات
  }
}
