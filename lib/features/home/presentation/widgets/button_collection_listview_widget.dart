import 'package:flutter/material.dart';
import 'package:graduation/features/home/presentation/widgets/button_collection_widget.dart';

class Buttoncollectionlistview extends StatelessWidget {
  const Buttoncollectionlistview({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SizedBox(
      height: 50,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 1,
          itemBuilder: (context, index) {
            return Row(
              children: [
                Buttonscollection(Title: 'Gadgets'),
                Buttonscollection(Title: 'Fashion'),
                Buttonscollection(Title: 'Toys'),
                Buttonscollection(Title: 'Education'),
                Buttonscollection(Title: 'Beauty'),
                Buttonscollection(Title: 'Travel'),
                Buttonscollection(Title: 'Fitness'),
                Buttonscollection(Title: 'Furniture'),
                Buttonscollection(Title: 'Sneakers'),
              ],
            );
          }),
    );
  }
}
