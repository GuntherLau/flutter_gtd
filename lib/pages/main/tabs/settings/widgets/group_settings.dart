import 'package:flutter/material.dart';

class GroupSettings extends StatelessWidget {

  final List<Widget> children;

  const GroupSettings(this.children, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(14),
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: const [
            BoxShadow(
                color: Color.fromRGBO(166, 171, 189, 0.5),
                offset: Offset(2, 2),
                blurRadius: 15)

          ]),
      child: Column(
        spacing: 4,
        children: children,
      ),
    );
  }

}