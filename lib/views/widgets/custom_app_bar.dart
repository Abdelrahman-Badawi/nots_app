import 'package:flutter/material.dart';
import 'package:notsapp/views/widgets/custom_search_icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Notes',
          style:
              Theme.of(context).textTheme.headlineSmall!.copyWith(fontSize: 28),
        ),
        const CustomSearchIcon()
      ],
    );
    
  }
}

