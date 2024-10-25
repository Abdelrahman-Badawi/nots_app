import 'package:flutter/material.dart';
import 'package:notsapp/views/widgets/custom_search_icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key, required this.title, required this.icon, required this.onPressed});

  final String title;
  final IconData icon;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style:
              Theme.of(context).textTheme.headlineSmall!.copyWith(fontSize: 28),
        ),
        CustomIcon(
          onPressed: onPressed,
          icon: icon,
        )
      ],
    );
  }
}
