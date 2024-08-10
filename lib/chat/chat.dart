import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:kiswa/notifications/notification.dart';

class Chats extends StatefulWidget {
  @override
  State<Chats> createState() {
    return _ChatsState();
  }
}

class _ChatsState extends State<Chats> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: const Text(
          "المحادثات",
          style: TextStyle(
              fontSize: 25, fontFamily: "Roboto", fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
              onPressed: () {
                setState(() {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return notification();
                  }));
                });
              },
              icon: const Icon(
                Icons.arrow_forward,
                size: 25,
                color: Colors.black,
              ))
        ],
      ),
      body: const Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            TextField(
              scrollPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              textAlign: TextAlign.right,
              decoration: InputDecoration(
                  hintText: "البحث",
                  suffixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(40)),
                      borderSide: BorderSide(color: Colors.grey)),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(40)),
                      borderSide: BorderSide(color: Colors.grey))),
            )
          ],
        ),
      ),
    );
  }
}