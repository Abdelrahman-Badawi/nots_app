import 'package:flutter/material.dart';
import 'package:notsapp/views/widgets/custom_app_bar.dart';
import 'package:notsapp/views/widgets/custom_text_field.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Padding(
        padding: EdgeInsets.only(top: 24, bottom: 0, right: 24, left: 24),
        child: Column(
          children: [
            CustomAppBar(
              title: 'Edite Note',
              icon: Icons.check,
            ),
            SizedBox(
              height: 50,
            ),
            CustomTextField(hint: 'Title'),
            SizedBox(
              height: 16,
            ),
            CustomTextField(
              hint: 'Content',
              maxLines: 5,
            ),
          ],
        ),
      ),
    );
  }
}
