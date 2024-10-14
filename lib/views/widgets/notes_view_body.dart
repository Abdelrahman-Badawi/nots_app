import 'package:flutter/material.dart';
import 'package:notsapp/views/widgets/custom_app_bar.dart';
import 'package:notsapp/views/widgets/custom_note_item.dart';
import 'package:notsapp/views/widgets/notes_list_view.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          children: [
            SizedBox(
              height: 5,
            ),
            CustomAppBar(),
            SizedBox(
              height: 20,
            ),
            Expanded(
              child: NotesListView(),
            ),
          ],
        ),
      ),
    );
  }
}
