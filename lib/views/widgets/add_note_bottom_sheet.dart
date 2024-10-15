import 'package:flutter/material.dart';
import 'package:notsapp/views/widgets/custom_text_field.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(vertical: 32, horizontal: 24),
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
            maxLines: 7,
          )
        ],
      ),
    );
  }
}
