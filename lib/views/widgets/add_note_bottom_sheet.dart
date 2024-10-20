import 'package:flutter/material.dart';
import 'package:notsapp/constants/constants.dart';
import 'package:notsapp/views/widgets/custom_bottom.dart';
import 'package:notsapp/views/widgets/custom_text_field.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(top: 28, bottom: 0, right: 24, left: 24),
      child: SingleChildScrollView(
        child: Column(
          children: [
            CustomTextField(
              hint: 'Title',
            ),
            SizedBox(
              height: 16.0,
            ),
            CustomTextField(
              hint: 'Content',
              maxLines: 5,
            ),
            SizedBox(
              height: 32,
            ),
            CustomBottom(),
            SizedBox(
              height: 16,
            )
          ],
        ),
      ),
    );
  }
}

