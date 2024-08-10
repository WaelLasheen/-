import 'package:flutter/material.dart';
import 'package:kiswa/Notifications/Notification.dart';

class Customappbar extends StatelessWidget implements PreferredSizeWidget {
  final bool automaticallyImplyLeading;
  Customappbar({required this.automaticallyImplyLeading});
  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      title: Row(
        children: [
          Stack(
            children: [
              IconButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return notification();
                  }));
                },
                icon: const Icon(
                  Icons.notifications_sharp,
                  size: 35,
                ),
              ),
              const Positioned(
                left: 23,
                top: 12,
                child: Icon(
                  Icons.circle,
                  color: Color(0xFF84BF60),
                  size: 10,
                ),
              ),
            ],
          ),
          CircleAvatar(
            backgroundColor: Color(0XFF84BF60),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.add,
                color: Colors.white,
              ),
            ),
          )
        ],
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
          child: RichText(
            text: const TextSpan(
              text: " أهلا",
              style: TextStyle(
                color: Colors.black,
                fontSize: 30.0,
                fontFamily: "Roboto",
                fontWeight: FontWeight.w900,
              ),
              children: [
                TextSpan(
                  text: "إسراء ",
                  style: TextStyle(
                    fontSize: 30,
                    color: Color(0XFF84BF60),
                    fontFamily: "Roboto",
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
