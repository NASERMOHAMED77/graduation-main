import 'package:flutter/material.dart';
import 'package:graduation/features/home/presentation/pages/category_screen.dart';
import 'package:graduation/features/home/presentation/pages/home_page.dart';
import 'package:graduation/features/home/presentation/widgets/category_card_widget.dart';

class Categorieslistview extends StatelessWidget {
  const Categorieslistview({super.key});

  final List<CategoryModel> category = const [
    CategoryModel(
        CategoryName: 'Hand Bag',
        Image: 'assets/images/64185e5d291c410fd84041217d537f91.jpg'),
    CategoryModel(
        CategoryName: 'Sneakers',
        Image: 'assets/images/151f03a8a627cdf8b8fee9ebe1d67aaa.jpg'),
    CategoryModel(
        CategoryName: 'Travel',
        Image: 'assets/images/2231300d90274ba6f0ac93b65e213d29.jpg'),
    CategoryModel(
        CategoryName: 'Shoes',
        Image: 'assets/images/959ce4ceb59e03701a343e73ca5eb3df.jpg'),
    CategoryModel(
        CategoryName: 'Clothes',
        Image: 'assets/images/c43ef5d84f32d541f4746d71c4f82675.jpg'),
    CategoryModel(
        CategoryName: 'SkinCare',
        Image: 'assets/images/0203b2e05549d0d03fa3d4a1551582e4.jpg'),
  ];
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SizedBox(
      height: MediaQuery.of(context).size.height * .18,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: category.length,
          itemBuilder: (context, index) {
            return InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const CategoryScreen()));
              },
              child: CategoryCard(
                category: category[index],
              ),
            );
          }),
    );
  }
}
