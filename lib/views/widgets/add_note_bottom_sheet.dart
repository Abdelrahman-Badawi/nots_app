import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notsapp/cubits/add_note_cubit/add_note_state.dart';
import 'package:notsapp/cubits/add_note_cubit/add_notes_cubit.dart';
import 'package:notsapp/cubits/notes_cubit/notes_cubit.dart';
import 'package:notsapp/views/widgets/add_note_form.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({required this.notesCubit});

  final NotesCubit notesCubit;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddNotesCubit(),
      child: BlocConsumer<AddNotesCubit, AddNotesState>(
        listener: (context, state) {
          if (state is AddNoteFailure) {
            debugPrint('Failed ${state.message}');
          }
          if (state is AddNoteSuccess) {
            Navigator.pop(context);
          }
        },
        builder: (context, state) {
          return AbsorbPointer(
            absorbing: state is AddNoteLoading ? true : false,
            child: Padding(
              padding: EdgeInsets.only(
                top: 28,
                bottom: MediaQuery.of(context).viewInsets.bottom,
                right: 24,
                left: 24,
              ),
              child: SingleChildScrollView(
                child: AddNoteForm(
                    notesCubit: notesCubit), // Pass notesCubit to AddNoteForm
              ),
            ),
          );
        },
      ),
    );
  }
}
