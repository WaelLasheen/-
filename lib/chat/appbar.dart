import 'package:flutter/material.dart';
import 'package:kiswa/consts/colors.dart';

class appbar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final bool back;

  const appbar({
    required this.title,
    required this.back,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      automaticallyImplyLeading: false,
      title: Text(
        title,
        style: const TextStyle(
            fontSize: 25, fontFamily: "Roboto", fontWeight: FontWeight.bold),
      ),
      actions: [
        back?
          IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(
              Icons.arrow_forward,
              size: 25,
              color: black,
            ),
          ): const SizedBox()
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
