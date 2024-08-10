import 'package:flutter/material.dart';

import 'package:kiswa/widgets/Customappbar.dart';

import 'package:kiswa/widgets/buttons.dart';

class screen2 extends StatefulWidget {
  @override
  State<screen2> createState() {
    return Achives();
  }
}

class Achives extends State<screen2> {
  int _selectindex = 1;
  _onIndexChanged(int index) {
    setState(() {
      _selectindex = index;
    });
  }

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
      appBar: Customappbar(
        automaticallyImplyLeading: false,
      ),
      body: SingleChildScrollView(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Buttons(
                selectedIndex: _selectindex,
                onIndexChanged: _onIndexChanged,
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
