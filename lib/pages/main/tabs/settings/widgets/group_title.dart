import 'package:flutter/material.dart';

class GroupTitle extends StatelessWidget {

  final String title;

  const GroupTitle(this.title, {super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: const EdgeInsets.only(left: 14 * 2),
        child: Text(title, style: Theme.of(context).textTheme.titleMedium),
      ),
    );
  }

}