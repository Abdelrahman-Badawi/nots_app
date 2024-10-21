import 'package:flutter/material.dart';

@immutable
abstract class AddNotesState {}

class AddNoteInitial extends AddNotesState {}

class AddNoteLoading extends AddNotesState {}

class AddNoteSuccess extends AddNotesState {}

class AddNoteFailure extends AddNotesState {
  final String message;
  AddNoteFailure(this.message);
}
