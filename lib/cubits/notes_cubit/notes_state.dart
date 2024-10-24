import 'package:flutter/material.dart';
import 'package:notsapp/models/note_model.dart';

@immutable
abstract class NotesState {}

class NotesIntial extends NotesState {}

class NotesLoaded extends NotesState {
  final List<NoteModel> notes;
  NotesLoaded(this.notes);
}
