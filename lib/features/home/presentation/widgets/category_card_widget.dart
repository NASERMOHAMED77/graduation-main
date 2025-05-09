import 'package:flutter/material.dart';
import 'package:graduation/features/home/data/Models/store_product_get_category/store_product_get_category.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({super.key, required this.category});
  final CategoryModel category;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: const EdgeInsets.only(
        right: 16,
      ),
      child: Container(
        height: MediaQuery.of(context).size.height * .25,
        width: MediaQuery.of(context).size.width * .4,
        decoration: BoxDecoration(
          //ممكن احط ايمدج من الاسيتست
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage(category.imgUrl.toString()),
          ),
          color: Colors.yellow,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Text(
          textAlign: TextAlign.center,
          category.name.toString(),
          style: const TextStyle(color: Colors.white, fontSize: 22),
        ),
      ),
    );
  }
}
