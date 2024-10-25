import 'package:flutter/material.dart';
import 'package:notsapp/views/widgets/custom_app_bar.dart';
import 'package:notsapp/views/widgets/notes_list_view.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Padding(
        padding:const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          children: [
            const SizedBox(
              height: 5,
            ),
            CustomAppBar(
              onPressed: (){},
              title: 'Notes',
              icon: Icons.search,
            ),
            const Expanded(
              child: NotesListView(),
            ),
          ],
        ),
      ),
    );
  }
}
