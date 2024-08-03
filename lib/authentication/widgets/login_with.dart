// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:kiswa/consts/colors.dart';

// ignore: must_be_immutable
class LoginWith extends StatelessWidget {
  String image;
  Function()? onTap;
  LoginWith({
    super.key,
    required this.image,
    this.onTap,
  });
  

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Container(
      width: width * 0.19,
      height: width * 0.19,
      padding: const EdgeInsets.all(12),
      margin: EdgeInsets.symmetric(horizontal: width * 0.04, vertical: width * 0.02),
      decoration: BoxDecoration(
          color: white,
          borderRadius: BorderRadius.circular(25),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 2.5,
              blurRadius: 2.5,
              offset: const Offset(-.5, 4), // changes position of shadow
            ),
          ]),
      child: InkWell(
        onTap: onTap,
        child: Image.asset(image,),
      ),
    );
  }
}
