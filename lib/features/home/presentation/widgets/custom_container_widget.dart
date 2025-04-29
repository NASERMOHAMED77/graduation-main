// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  String maintext;
  String image;
  CustomContainer({super.key, required this.maintext, required this.image});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      width: MediaQuery.of(context).size.width * .2,
      height: 90,
      decoration: BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            radius: 30,
            backgroundImage: AssetImage(image), // مسار الصورة
          ),
          // SizedBox(
          //   width: 20,
          // ),
          // Column(
          //   children: [
          //     Text(
          //       '$maintext',
          //       style: TextStyle(color: Colors.black, fontSize: 24),
          //     ),
          //     Text(
          //       'Delivery With In 24 hours',
          //       style: TextStyle(color: Colors.grey, fontSize: 14),
          //     ),
          //   ],
          // ),
        ],
      ),
    );
  }
}
