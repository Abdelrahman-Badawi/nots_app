import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notsapp/cubits/add_note_cubit/add_note_state.dart';
import 'package:notsapp/models/note_model.dart';

class AddNotesCubit extends Cubit<AddNotesState> {
  AddNotesCubit() : super(AddNoteInitial());

  addNote(NoteModel note){
    
  }
}
