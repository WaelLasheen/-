import 'package:flutter/material.dart';
import 'package:kiswa/Notifications/Notification.dart';
import 'package:kiswa/homescreens/screen1.dart';
import 'package:kiswa/homescreens/screen3.dart';

class screen2 extends StatefulWidget {
  @override
  State<screen2> createState() {
    return Achives();
  }
}

class Achives extends State<screen2> {
  int selectindex = 1;

  @override
  Widget build(BuildContext context) {
    DateTime now = DateTime.now();
    int currentMonth = now.month;

    List<String> monthNames = [
      'يناير',
      'فبراير',
      'مارس',
      'إبريل',
      'مايو',
      'يونيو',
      'يوليو',
      'اغسطس',
      'سبتمبر',
      'أكتوبر',
      'نوفمبر',
      'ديسمبر'
    ];
    String currentMonthName = monthNames[currentMonth - 1];

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            Stack(
              children: [
                IconButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return notification();
                      }));
                    },
                    icon: const Icon(
                      Icons.notifications_sharp,
                      size: 35,
                    )),
                const Positioned(
                    left: 23,
                    top: 12,
                    child: Icon(
                      Icons.circle,
                      color: Color(0xFF84BF60),
                      size: 10,
                    ))
              ],
            ),
            CircleAvatar(
              backgroundColor: Color(0XFF84BF60),
              child: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.add,
                    color: Colors.white,
                  )),
            )
          ],
        ),
        actions: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 8),
            child: RichText(
              text: const TextSpan(
                  text: " أهلا",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 30.0,
                      fontFamily: "Roboto",
                      fontWeight: FontWeight.w900),
                  children: [
                    TextSpan(
                        text: "إسراء ",
                        style: TextStyle(
                            fontSize: 30,
                            color: Color(0XFF84BF60),
                            fontFamily: "Roboto",
                            fontWeight: FontWeight.bold))
                  ]),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    MaterialButton(
                      onPressed: () {
                        setState(() {
                          selectindex = 0;
                        });
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => screen1()),
                        );
                      },
                      child: Text(
                        "مقالات التوعية",
                        style: TextStyle(
                          color: selectindex == 0
                              ? Color(0xFF1F201C)
                              : Color(0XFF848787),
                          fontSize: 30,
                        ),
                      ),
                    ),
                    MaterialButton(
                      onPressed: () {
                        setState(() {
                          selectindex = 1;
                        });
                      },
                      child: Text(
                        "إنجازات الشهر",
                        style: TextStyle(
                          color: selectindex == 1
                              ? Color(0xFF1F201C)
                              : Color(0XFF848787),
                          fontSize: 30,
                        ),
                      ),
                    ),
                    MaterialButton(
                      onPressed: () {
                        setState(() {
                          selectindex = 2;
                        });
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => screen3()),
                        );
                      },
                      child: Text(
                        "أبرز المتبرعين",
                        style: TextStyle(
                          color: selectindex == 2
                              ? Color(0xFF1F201C)
                              : Color(0XFF848787),
                          fontSize: 30,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Image.asset(
                "assets/images/Frame90.png",
                fit: BoxFit.fill,
                width: double.infinity,
              ),
              RichText(
                  text: TextSpan(
                      text: "تقرير شهر",
                      style: const TextStyle(
                          color: Color(0xFF1F201C),
                          fontSize: 20,
                          fontFamily: "Roboto",
                          fontWeight: FontWeight.bold),
                      children: [
                    TextSpan(
                        text: currentMonthName,
                        style: const TextStyle(
                            color: Color(0XFF84BF60),
                            fontFamily: "Roboto",
                            fontSize: 20,
                            fontWeight: FontWeight.bold))
                  ])),
              const SizedBox(
                height: 10,
              ),
              Column(
                children: [
                  Image.asset(
                    "assets/images/Frame91.png",
                    fit: BoxFit.fill,
                  ),
                ],
              ),
              const Text(
                ":إحصائيات التبرعات",
                style: TextStyle(
                    color: Color(0XFF1F201C),
                    fontFamily: "Roboto",
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              const Text(":عدد التبرعات . "),
              const Text("هذا الشهر أستلمنا[5000]قطعة ملابس."),
              const Text(":عدد المتبرعين ."),
              const Text("شارك معنا [500]متبرع جديد"),
              const SizedBox(
                height: 5,
              ),
              const Text(
                ":توزيع التبرعات",
                style: TextStyle(
                    color: Color(0XFF1F201C),
                    fontFamily: "Roboto",
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              const Text(":الملابس الموزعة. "),
              const Text(
                  "تم توزيع[4500]قطعة ملابس علي الاسر المحتاجة في [17]منطقة مختلفة"),
              const Text(":الفئات المستفادة. "),
              const Text("استفاد من التبرعات[3000]أسرة"),
              Image.asset(
                "assets/images/Frame70.png",
                fit: BoxFit.fill,
                width: double.infinity,
              ),
            ]),
      ),
    );
  }
}
