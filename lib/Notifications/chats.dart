import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:kiswa/Notifications/Notification.dart';
import 'package:kiswa/Notifications/messages.dart';
import 'package:kiswa/widgets/chatitem.dart';

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
      body: Padding(
        padding: EdgeInsets.all(8),
        child: Column(
          children: [
            const TextField(
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
            ),
            Expanded(
              child: ListView(children: [
                MaterialButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return Messages();
                    }));
                  },
                  child: const ChatItem(
                    title: 'مؤسسة مرسال الخيرية',
                    message: "مرحبا ! نحن من جمعية مرسال الخيرية, نود إخباركم",
                    date: 'أمس',
                    imageUrl: 'assets/images/chat1.png',
                  ),
                ),
                const Divider(),
                const ChatItem(
                  title: 'مبادرة ظلال',
                  message: 'سعدون بأنك ستساهم معنا! سنتأكد من أن...',
                  date: '7/7/24',
                  imageUrl: 'assets/images/chat2.png',
                ),
                const Divider(),
                Image.asset("assets/images/chat3.png")
              ]),
            )
          ],
        ),
      ),
    );
  }
}
