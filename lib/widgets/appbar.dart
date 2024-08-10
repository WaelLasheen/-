import 'package:flutter/material.dart';
import 'package:kiswa/homescreens/screen1.dart';

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
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return screen1();
              }));
            },
            icon: const Icon(
              Icons.arrow_forward,
              size: 25,
              color: Colors.black,
            ))
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
