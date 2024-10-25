import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notsapp/cubits/notes_cubit/notes_cubit.dart';
import 'package:notsapp/models/note_model.dart';
import 'package:notsapp/views/widgets/custom_app_bar.dart';
import 'package:notsapp/views/widgets/custom_text_field.dart';

class EditNoteViewBody extends StatefulWidget {
  const EditNoteViewBody({super.key, required this.note});
  final NoteModel note;

  @override
  State<EditNoteViewBody> createState() => _EditNoteViewBodyState();
}

class _EditNoteViewBodyState extends State<EditNoteViewBody> {
  String? title;
  String? content;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(top: 24, bottom: 0, right: 24, left: 24),
        child: Column(
          children: [
            CustomAppBar(
              onPressed: () {
                widget.note.title = title ?? widget.note.title;
                widget.note.subTitle = content ?? widget.note.subTitle;
                BlocProvider.of<NotesCubit>(context).fetchAllNotes();
                widget.note.save();
                Navigator.pop(context);
              },
              title: 'Edite Note',
              icon: Icons.check,
            ),
            const SizedBox(
              height: 50,
            ),
            CustomTextField(
              onChanged: (value) {
                title = value;
              },
              hint: widget.note.title,
            ),
            const SizedBox(
              height: 16,
            ),
            CustomTextField(
              onChanged: (vlaue) {
                content = vlaue;
              },
              hint: widget.note.subTitle,
              maxLines: 5,
            ),
          ],
        ),
      ),
    );
  }
}
