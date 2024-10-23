import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:notsapp/cubits/add_note_cubit/add_note_state.dart';
import 'package:notsapp/cubits/add_note_cubit/add_notes_cubit.dart';
import 'package:notsapp/views/widgets/add_note_form.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 28, bottom: 0, right: 24, left: 24),
      child: SingleChildScrollView(
        child: BlocConsumer<AddNotesCubit, AddNotesState>(
          listener: (context, state) {
            if (state is AddNoteFailure) {
              print('Failed ${state.message}');
            }
            if (state is AddNoteSuccess) {
              Navigator.pop(context);
            }
          },
          builder: (context, state) {
            return ModalProgressHUD(
              inAsyncCall: state is AddNoteLoading ? true : false,
              child:const AddNoteForm(),
            );
          },
        ),
      ),
    );
  }
}
