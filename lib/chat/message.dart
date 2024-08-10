import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:kiswa/chat/appbar.dart';

class Messages extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const appbar(
        automaticallyImplyLeading: false,
        title: "مؤسسة مرسال الخيرية",
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Image.asset("assets/images/messages.png"),
              SizedBox(height: 220),
              Row(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.orange,
                    child: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.send_rounded,
                          color: Colors.white,
                        )),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(.2),
                            ),
                          ]),
                      child: const TextField(
                        scrollPadding:
                            EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                        textAlign: TextAlign.right,
                        decoration: InputDecoration(
                            hintText: "....اكتب رسالتك",
                            prefixIcon: Icon(
                              Icons.attachment,
                              color: Colors.black,
                            ),
                            border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(40)),
                                borderSide: BorderSide.none),
                            focusedBorder: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(40)),
                                borderSide: BorderSide.none)),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}