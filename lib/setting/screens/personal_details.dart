import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:kiswa/consts/colors.dart';
import 'package:kiswa/consts/images.dart';
import 'package:kiswa/setting/widgets/detail_feild.dart';

class PersonalDetails extends StatelessWidget {
  const PersonalDetails({super.key});

  @override
  Widget build(BuildContext context) {
    // data will come from backend in future
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'المعلومات الشخصية',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: black,
            fontSize: 20,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: () => Navigator.of(context).pop(),
            icon: const Icon(
              Icons.arrow_forward_rounded,
              color: black,
            ),
          ),
        ],
      ),
      body: ListView(
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.width * .55,
            child: Stack(
              children: [
                Center(child: Image.asset(Ellipse)),
                Center(child: Image.asset(Personal_Image)),
                Positioned(
                  bottom: 20,
                  right: MediaQuery.of(context).size.width / 3.8,
                  child: Image.asset(Camera),
                ),
              ],
            ),
          ),
          const DetailFeild(title: 'اسم المستخدم', value: 'اسراء جمال'),
          const DetailFeild(title: 'رقم الهاتف', value: '01026887566'),
          const DetailFeild(title: 'الجنس', value: 'انثى'),
          const DetailFeild(
              title: 'الدولة والمنطقة', value: 'مصر,الدقهلية,المنصورة'),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
