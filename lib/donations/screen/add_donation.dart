import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:kiswa/consts/colors.dart';

class AddDonation extends StatefulWidget {
  AddDonation({super.key});

  @override
  State<AddDonation> createState() => _AddDonationState();
}

class _AddDonationState extends State<AddDonation> {
  final TextEditingController description = TextEditingController();
  XFile? _image;

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
            pickImg();
          },
          child: Container(
            height: MediaQuery.of(context).size.height * .3,
            width: MediaQuery.of(context).size.width * .8,
            margin: const EdgeInsets.symmetric(vertical: 12, horizontal: 8),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20), color: litegrey),
            // child: const Icon(Icons.add_a_photo),
            child: _image==null? const Icon(Icons.add_a_photo) : Image.file(File(_image!.path)),
          ),
        ),
        // custom button to use in all screens
        // need text and function
        Container(
          margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 18),
          width: MediaQuery.of(context).size.width,
          child: ElevatedButton(
            onPressed: () {
              print(description.text);
            },
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
  
  void pickImg() async{
    XFile? image = await ImagePicker().pickImage(source: ImageSource.gallery);
    setState(() {
      _image = image;
    });
  }

  void uploadImage(){
    // upload image to firebase storage
    // folder path in fire storage gs://kiswa-6cd90.appspot.com
    //will be added in future    
  }
}
