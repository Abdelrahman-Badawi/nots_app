import 'package:flutter/material.dart';

class NoteIteme extends StatelessWidget {
  const NoteIteme({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.yellow, borderRadius: BorderRadius.circular(16.0)),
      child: Column(
        children: [
          ListTile(
            title: Text(
              'Futter Tips',
              style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                    color: Colors.black,
                  ),
            ),
            subtitle: Text(
              'Build your carear with me',
              style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                    color: Colors.black,
                  ),
            ),
            trailing: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.delete,
              ),
            ),
          )
        ],
      ),
    );
  }
}
