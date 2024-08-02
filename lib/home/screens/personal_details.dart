import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:kiswa/consts/images.dart';
import 'package:kiswa/home/widgets/detail_feild.dart';

class PersonalDetails extends StatelessWidget {
  const PersonalDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          DetailFeild(title:'اسم المستخدم', value: 'اسراء جمال'),
        ],
      ),
    );
  }
}
