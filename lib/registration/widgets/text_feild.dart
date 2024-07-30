import 'package:flutter/material.dart';

class textFeild extends StatelessWidget {
  String hint;
  IconData icon;
  TextEditingController controller;
  bool obscureText ; Widget obscureIcon;
  
  textFeild({super.key , required this.hint, required this.icon, required this.controller, required this.obscureText, required this.obscureIcon});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 12),
      padding: const EdgeInsets.symmetric(horizontal: 12),
      decoration: BoxDecoration(
          border: Border.all(color: Colors.grey, width: 1.2),
          borderRadius: BorderRadius.circular(18)),
      child: Row(
        children: [
          obscureIcon,
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: hint,
                  hintTextDirection: TextDirection.rtl),
              controller: controller,
              obscureText: obscureText,
            ),
          ),
          const SizedBox(
            width: 8,
          ),
          Icon(
            icon,
            color: Colors.grey,
          ),
        ],
      ),
    );
  }
}