import 'package:cached_network_image/cached_network_image.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:kiswa/consts/colors.dart';

class MyDonations extends StatefulWidget {
  const MyDonations({super.key});

  @override
  State<MyDonations> createState() => _MyDonationsState();
}

class _MyDonationsState extends State<MyDonations> {
  CollectionReference _refrence =
      FirebaseFirestore.instance.collection('donations');

  late Stream<QuerySnapshot> _donationsStream;

  @override
  void initState() {
    super.initState();
    String userID = FirebaseAuth.instance.currentUser!.uid;
    _donationsStream = _refrence.orderBy('time', descending: true).where('id',isEqualTo: userID).snapshots();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<QuerySnapshot>(
      stream: _donationsStream,
      builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
        if (snapshot.hasError) {
          print("error \n\n ${snapshot.error} \n\n");
          return const Center(child: Text('Something went wrong'));
        }

        if (snapshot.hasData) {
          if (snapshot.data!.docs.isEmpty) {
            return const Center(
              child: Text('لا توجد تبرعات'),
            );
          }

          // get data
          List<QueryDocumentSnapshot> docs = snapshot.data!.docs;
          // convert to list of donations
          List<Map> donations = docs.map((e) => e.data() as Map).toList();
          return ListView.builder(
            itemCount: donations.length,
            itemBuilder: (context, index) {
              Map donation = donations[index];
              return Container(
                width: MediaQuery.of(context).size.width,
                alignment: Alignment.topCenter,
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                margin: const EdgeInsets.only(left: 8, right: 8, bottom: 16),
                decoration: BoxDecoration(boxShadow: [
                  BoxShadow(
                    color: white.withOpacity(0.6),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: const Offset(0, 3), // changes position of shadow
                  ),
                ]),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      donation['email'],
                      style: const TextStyle(
                        color: green,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    Text(
                      donation['description'],
                      textDirection: TextDirection.rtl,
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    CachedNetworkImage(
                      imageUrl: donation['imgUrl'],
                      placeholder: (context, url) => const Center(
                        child: CircularProgressIndicator(),
                      ),
                      errorWidget: (context, url, error) =>
                          const Icon(Icons.error),
                    ),
                  ],
                ),
              );
            },
          );
        }

        return const Center(
          child: CircularProgressIndicator(),
        );
      },
    );
  }
}
