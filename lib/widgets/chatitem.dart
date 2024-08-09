import 'package:flutter/material.dart';

class ChatItem extends StatelessWidget {
  final String title;
  final String message;
  final String date;
  final String imageUrl;

  const ChatItem({
    required this.title,
    required this.message,
    required this.date,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Align(
          alignment: Alignment.centerRight,
          child: Text(title,
              style:
                  const TextStyle(fontWeight: FontWeight.bold, fontSize: 20))),
      subtitle: Align(
          alignment: Alignment.centerRight,
          child: Text(
            message,
            style: TextStyle(color: Colors.grey, fontSize: 15),
          )),
      leading: Text(date),
      trailing: CircleAvatar(
        radius: 40,
        backgroundImage: AssetImage(imageUrl),
      ),
    );
  }
}
