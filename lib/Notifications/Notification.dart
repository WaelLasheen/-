import 'package:flutter/material.dart';
import 'package:kiswa/Notifications/chats.dart';
import 'package:kiswa/homescreens/screen1.dart';

class notification extends StatefulWidget {
  @override
  State<notification> createState() {
    return Notification();
  }
}

class Notification extends State<notification> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: const Text(
          "الاشعارات",
          style: TextStyle(
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
      ),
      body: Column(
        textDirection: TextDirection.rtl,
        children: [
          ListTile(
            contentPadding: EdgeInsets.symmetric(horizontal: 10.0),
            title: const Align(
              alignment: Alignment.centerRight,
              child: Text(
                "!اكتشف تأثير تبرعك",
                style: TextStyle(color: Color(0xFF000000), fontSize: 20),
              ),
            ),
            subtitle: const Align(
              alignment: Alignment.centerRight,
              child: Text(
                ".أقرأ مقالنا الجديد لمعرفة كيف تحدث تبرعاتك فرقا في حياة الاسر المحتاجه",
                style: TextStyle(color: Color(0XFF848787)),
              ),
            ),
            leading: Image.asset("assets/images/icon.png"),
            trailing: const Icon(
              Icons.circle,
              color: Color(0XFF84BF60),
            ),
          ),
          Divider(),
          ListTile(
            contentPadding: EdgeInsets.all(10),
            title: const Align(
              alignment: Alignment.centerRight,
              child: Text(
                ".تم تغيير كلمة المرور بنجاح",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
            ),
            leading: CircleAvatar(
              backgroundColor: Colors.green.shade700,
              child: const Icon(
                Icons.check,
                color: Colors.white,
              ),
            ),
          ),
          Divider(),
          MaterialButton(
            onPressed: () {
              setState(() {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return Chats();
                }));
              });
            },
            child: ListTile(
              contentPadding: EdgeInsets.all(10),
              title: const Align(
                alignment: Alignment.centerRight,
                child: Text(
                  "رسالة جديدة",
                  style: TextStyle(color: Colors.black, fontSize: 20),
                ),
              ),
              subtitle: const Align(
                alignment: Alignment.centerRight,
                child: Text(
                  ".تلقيت رسالة جديدة من جمعية مرسال.يرجي التحقق من صندوق بريدك لقراءة الرسالة والتفاعل معها",
                  style: TextStyle(color: Color(0XFF848787)),
                ),
              ),
              leading: Image.asset("assets/images/message.png"),
            ),
          ),
          Spacer(),
          Image.asset(
            "assets/images/desktop.png",
            width: double.infinity,
            fit: BoxFit.cover,
          )
        ],
      ),
    );
  }
}
