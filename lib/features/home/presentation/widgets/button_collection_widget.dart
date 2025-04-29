// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class Buttonscollection extends StatelessWidget {
  String Title;
  Buttonscollection({super.key, required this.Title});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 10),
          child: ElevatedButton(
            onPressed: () {},
            child: Text(
              Title,
              style: const TextStyle(color: Colors.black, fontSize: 15),
            ),
          ),
        ),
      ],
    );
  }
}
