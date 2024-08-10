import 'package:flutter/material.dart';
import 'package:kiswa/consts/colors.dart';

class appbar extends StatelessWidget implements PreferredSizeWidget {
  final String title;

  final bool automaticallyImplyLeading;
  const appbar({
    required this.title,
    required this.automaticallyImplyLeading,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      automaticallyImplyLeading: automaticallyImplyLeading,
      title: Text(
        title,
        style: const TextStyle(
            fontSize: 25, fontFamily: "Roboto", fontWeight: FontWeight.bold),
      ),
      actions: [
        IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(
              Icons.arrow_forward,
              size: 25,
              color: black,
            ))
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
