// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:graduation/features/store_portfollio/presentation/pages/store_page.dart';

class Bigcardlistview extends StatelessWidget {
  List imagess = [
    'https://www.dresscodeme.com/wp-content/uploads/2023/09/Untitled-design-2024-10-23T145255.520.png',
    'https://www.dresscodeme.com/wp-content/uploads/2024/10/20241011_120447_0000.png',
    'https://www.dresscodeme.com/wp-content/uploads/2024/09/Untitled-design-87.png',
    'https://www.dresscodeme.com/wp-content/uploads/2023/09/20241001_104542_0000.png'
  ];

  Bigcardlistview({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .4,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 4,
          itemBuilder: (context, index) {
            return ItemWidget(
              imagess: imagess,
              index: index,
            );
          }),
    );
  }
}
