import 'package:flutter/material.dart';
import 'package:kiswa/consts/colors.dart';

class DetailFeild extends StatelessWidget {
  const DetailFeild({super.key, required this.title, required this.value});
  final String title;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12 ,horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 12),
            child: Text(
              title,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
          ),
          const SizedBox(height: 8,),
          Container(
            width: MediaQuery.of(context).size.width * .9,
            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 18),
            alignment: Alignment.centerRight,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey, width: 1.2 ,),
              borderRadius: BorderRadius.circular(30)
            ),
            child: Text(
              value,
              style: const TextStyle(fontWeight: FontWeight.normal, fontSize: 20),
            ),
          ),
        ],
      ),
    );
  }
}