import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kiswa/consts/colors.dart';

class AddDonation extends StatelessWidget {
  AddDonation({super.key});

  final TextEditingController description = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.symmetric(vertical: 12, horizontal: 8),
          padding: const EdgeInsets.symmetric(horizontal: 18),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20), color: litegrey),
          child: TextField(
            maxLines: 4,
            minLines: 1,
            keyboardType: TextInputType.multiline,
            decoration: const InputDecoration(
              hintText: 'أضف وصف للقطعة',
              border: InputBorder.none,
            ),
            textAlign: TextAlign.end,
            controller: description,
          ),
        ),
        InkWell(
          onTap: () {
            // will added later
            // it will get image from camera or gallery
          },
          child: Container(
            height: MediaQuery.of(context).size.height * .3,
            width: MediaQuery.of(context).size.width * .8,
            margin: const EdgeInsets.symmetric(vertical: 12, horizontal: 8),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20), color: litegrey),
            child: const Icon(Icons.add_a_photo),
          ),
        ),
        // custom button to use in all screens
        // need text and function
        Container(
          margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 18),
          width: MediaQuery.of(context).size.width,
          child: ElevatedButton(
            onPressed: () {},
            style: const ButtonStyle(
              backgroundColor: MaterialStatePropertyAll(green),
            ),
            child: const Text(
              'تابع',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 22),
            ),
          ),
        ),
      ],
    );
  }
}
