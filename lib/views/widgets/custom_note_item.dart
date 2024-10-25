import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notsapp/cubits/notes_cubit/notes_cubit.dart';
import 'package:notsapp/models/note_model.dart';
import 'package:notsapp/views/edit_note_view.dart';

class NoteIteme extends StatelessWidget {
  const NoteIteme({super.key, required this.note});
  final NoteModel note;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return  EditNoteView(
                note: note,
              );
            },
          ),
        );
      },
      child: Container(
        padding: const EdgeInsets.only(top: 16, bottom: 16, left: 8),
        decoration: BoxDecoration(
          color: Color(note.color),
          borderRadius: BorderRadius.circular(16.0),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: Text(
                note.title,
                style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                      color: Colors.black,
                      fontSize: 26,
                    ),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 16, bottom: 8),
                child: Text(
                  note.subTitle,
                  style: Theme.of(context).textTheme.titleMedium!.copyWith(
                        color: Colors.black.withOpacity(0.5),
                        fontSize: 18.0,
                      ),
                ),
              ),
              trailing: IconButton(
                onPressed: () {
                  note.delete();
                  BlocProvider.of<NotesCubit>(context).fetchAllNotes();
                },
                icon: const Icon(
                  Icons.delete,
                  color: Colors.black,
                  size: 35,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 24),
              child: Text(
                note.date,
                style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                      color: Colors.black.withOpacity(0.4),
                    ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
