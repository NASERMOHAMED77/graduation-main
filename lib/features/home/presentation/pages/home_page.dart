import 'package:flutter/material.dart';
import 'package:graduation/features/home/presentation/widgets/big_card_listview_widget.dart';
import 'package:graduation/features/home/presentation/widgets/button_collection_listview_widget.dart';
import 'package:graduation/features/home/presentation/widgets/category_listview_widget.dart';
import 'package:graduation/features/home/presentation/widgets/final_container_listview_widget.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          const Text(
            'Ahmed',
            style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w700,
                color: Color.fromARGB(255, 31, 69, 41)),
          ),
          GestureDetector(
            onTap: () {},
            child: const Padding(
              padding: EdgeInsets.only(
                left: 8,
                right: 16,
              ),
              child: CircleAvatar(
                radius: 80,
                backgroundImage: AssetImage(
                    'assets/images/Woman-Icon-Teen-Profile-Graphics-26722130-1.jpg'),
              ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(right: 16, left: 16),
        child: ListView(
          children: [
            const Text(
              'Find It.Love It.Own It.',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700),
            ),
            const SizedBox(
              height: 15,
            ),
            const TextField(
              decoration: InputDecoration(
                contentPadding:
                    EdgeInsets.symmetric(vertical: 12, horizontal: 16),
                labelText: 'Search Here',
                prefixIcon: Icon(Icons.search),
                hintText: 'Search Here',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(22)),
                ),
              ),
            ),

            const SizedBox(
              height: 25,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Shop Our Top Categories',
                  style: TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                      fontWeight: FontWeight.w700),
                ),
                const SizedBox(
                  height: 15,
                ),
                const Categorieslistview(),
                const SizedBox(
                  height: 25,
                ),
                Container(
                  height: MediaQuery.of(context).size.height * .25,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    image: const DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage(
                        "assets/images/f08642dc-2f4c-485f-9365-acef9b44885c.jpg",
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                const Text(
                  'Todays Best Deals For You!',
                  style: TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                      fontWeight: FontWeight.w700),
                ),
                const SizedBox(
                  height: 15,
                ),
                Bigcardlistview(),
                const Text(
                  'Choose By Brand',
                  style: TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                      fontWeight: FontWeight.w700),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Finalcontainerlistview(),
                const Text(
                  'weekly Popular Products',
                  style: TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                      fontWeight: FontWeight.w700),
                ),
                const SizedBox(
                  height: 10,
                ),
                Bigcardlistview(),
                const SizedBox(
                  height: 15,
                ),
                const Text(
                  'Todays Best Deals For You!',
                  style: TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                      fontWeight: FontWeight.w700),
                ),
                const SizedBox(
                  height: 15,
                ),
                const Buttoncollectionlistview(),
                const SizedBox(
                  height: 25,
                ),
              ],
            ),
            Bigcardlistview(),
            const SizedBox(
              height: 15,
            ),
            Bigcardlistview(),
            const SizedBox(
              height: 15,
            ),
            const Text(
              'Most Selling Product',
              style: TextStyle(
                  fontSize: 15,
                  color: Colors.black,
                  fontWeight: FontWeight.w700),
            ),
            const SizedBox(
              height: 25,
            ),
            Bigcardlistview(),
            const SizedBox(
              height: 50,
            ),
            // Customrow(),
            const SizedBox(
              height: 50,
            ),
          ],
        ),
      ),
    );
  }
}

class CategoryModel {
  final String Image;
  final String CategoryName;

  const CategoryModel({required this.CategoryName, required this.Image});
}
