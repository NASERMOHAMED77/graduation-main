import 'package:flutter/material.dart';
import 'package:graduation/features/home/data/Models/store_product_get_category/store_product_get_category.dart';
import 'package:graduation/features/home/presentation/pages/category_screen.dart';
import 'package:graduation/features/home/presentation/widgets/category_card_widget.dart';

class Categorieslistview extends StatelessWidget {
   Categorieslistview({super.key});
 late CategoryModel categoryModel;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SizedBox(
      height: MediaQuery.of(context).size.height * .18,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 5,
          itemBuilder: (context, index) {
            return InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const CategoryScreen()));
              },
              child: CategoryCard(
                category: CategoryModel(),
              ),
            );
          }),
    );
  }
}
