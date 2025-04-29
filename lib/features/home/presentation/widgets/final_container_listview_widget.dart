import 'package:flutter/material.dart';
import 'package:graduation/features/home/presentation/widgets/final_container_widget.dart';
import 'package:graduation/features/store_portfollio/presentation/pages/store_page.dart';

class Finalcontainerlistview extends StatelessWidget {
  const Finalcontainerlistview({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SizedBox(
      height: 200,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 1,
          itemBuilder: (context, index) {
            return InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const StorePorfollio()));
                },
                child: const Finalcontainer());
          }),
    );
  }
}
