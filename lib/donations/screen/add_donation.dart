import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:kiswa/consts/colors.dart';
import 'package:firebase_storage/firebase_storage.dart';

class AddDonation extends StatefulWidget {
  AddDonation({super.key});

  @override
  State<AddDonation> createState() => _AddDonationState();
}

class _AddDonationState extends State<AddDonation> {
  final TextEditingController description = TextEditingController();
  XFile? _image;
  String _imgUrl = "";

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
            child: _image == null
                ? const Icon(Icons.add_a_photo)
                : Image.file(File(_image!.path)),
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
              if (_image != null) {
                print(_image!.path);
                uploadImage();
              } else {
                showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    content: Container(
                      height: MediaQuery.of(context).size.width * .1,
                      width: MediaQuery.of(context).size.width * .1,
                      decoration: const BoxDecoration(
                        color: white,
                      ),
                      alignment: Alignment.centerRight,
                      child: const Text(
                        "يجب تحديد صورة",
                        style: TextStyle(
                          color: green,
                          fontWeight: FontWeight.bold,
                          fontSize: 22,
                        ),
                      ),
                    ),
                    actions: [
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: const Text(
                          "اغلاق",
                          style: TextStyle(
                            color: Colors.red,
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          pickImg();
                          Navigator.of(context).pop();
                        },
                        child: const Text(
                          "تحديد",
                          style: TextStyle(
                            color: Colors.blue,
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              }
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

  void pickImg() async {
    XFile? image = await ImagePicker().pickImage(source: ImageSource.gallery);
    setState(() {
      _image = image;
    });

    print("image path: ${_image!.path}");
  }

  void uploadImage() async{
    Reference ref = FirebaseStorage.instance
        .ref()
        .child("images")
        .child(DateTime.now().microsecondsSinceEpoch.toString());
    try {
      await ref.putFile(File(_image!.path));
      _imgUrl = await ref.getDownloadURL();
    } catch (e) {
      print("error: $e");
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text("فشل التحميل"),
        ),
      );
    }
  }
}
