// ignore_for_file: prefer_const_constructors

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:graduation/core/utils/colors.dart';
import 'package:graduation/features/store_portfollio/data/models/store_model.dart';
import 'package:graduation/features/store_portfollio/presentation/manager/store_port_cubit.dart';
import 'package:graduation/features/store_portfollio/presentation/manager/store_port_states.dart';

class StorePorfollio extends StatefulWidget {
  const StorePorfollio({super.key});

  @override
  State<StorePorfollio> createState() => _StorePorfollioState();
}

class _StorePorfollioState extends State<StorePorfollio>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 1),
      vsync: this,
    );
    BlocProvider.of<StorePortCubit>(context).get_store(21);
    print("object");
    // Start the animation
    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  List images = [
    'https://www.dresscodeme.com/wp-content/uploads/2023/03/DC-Website-Bannerds-Template-for-web.webp',
    'https://www.dresscodeme.com/wp-content/uploads/2023/03/DC-Website-Bannerds-Template-for-web.webp',
    'https://www.dresscodeme.com/wp-content/uploads/2023/03/DC-Website-Bannerds-Template-for-web.webp',
    'https://www.dresscodeme.com/wp-content/uploads/2023/03/DC-Website-Bannerds-Template-for-web.webp',
  ];

  List imagess = [
    'https://www.dresscodeme.com/wp-content/uploads/2023/03/DC-Website-Bannerds-Template-for-web.webp',
    'https://www.dresscodeme.com/wp-content/uploads/2023/03/DC-Website-Bannerds-Template-for-web.webp',
    'https://www.dresscodeme.com/wp-content/uploads/2023/03/DC-Website-Bannerds-Template-for-web.webp',
    'https://www.dresscodeme.com/wp-content/uploads/2023/03/DC-Website-Bannerds-Template-for-web.webp',
  ];

  List cat = [
    'https://www.dresscodeme.com/wp-content/uploads/2023/03/DC-Website-Bannerds-Template-for-web.webp',
    'https://www.dresscodeme.com/wp-content/uploads/2023/03/DC-Website-Bannerds-Template-for-web.webp',
    'https://www.dresscodeme.com/wp-content/uploads/2023/03/DC-Website-Bannerds-Template-for-web.webp',
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        body: SingleChildScrollView(
          child: BlocBuilder<StorePortCubit, StorePortStates>(
              builder: (context, state) {
            if (state is GetStorePortSucess) {
              print(state.storeModel);
              return Column(
                children: [
                  TopPortfollioWidget(
                    title: state.storeModel.storeName,
                    background: state.storeModel.storeBackGroundLogo,
                    logo: state.storeModel.storeImg,
                    des: state.storeModel.description,
                  ),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Divider(
                      thickness: .1,
                      color: ColorManager.primaryColor,
                    ),
                  ),
                  PhotosCollWidget(
                    image: images,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "NEW ARRAIVAL",
                            style: GoogleFonts.anton(),
                          ),
                        ),
                        SlideTransition(
                          position: Tween<Offset>(
                            begin: const Offset(1, 0), // Start above the screen
                            end: Offset.zero, // End at the original position
                          ).animate(CurvedAnimation(
                            parent: _controller,
                            curve: Curves.easeInOut,
                          )),
                          child: SizedBox(
                            height: MediaQuery.of(context).size.height * .8,
                            child: GridView.builder(
                                itemCount: 4,
                                physics: const NeverScrollableScrollPhysics(),
                                gridDelegate:
                                    const SliverGridDelegateWithFixedCrossAxisCount(
                                        crossAxisSpacing: 5,
                                        childAspectRatio: .55,
                                        crossAxisCount: 2),
                                itemBuilder: (context, index) {
                                  return StoreItemWidget(
                                    product: state.storeModel.storeProducts,
                                    index: index,
                                  );
                                }),
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Categories",
                      style: GoogleFonts.anton(),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * .4,
                    child: ListView.builder(
                        itemCount: 3,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: SizedBox(
                              height: MediaQuery.of(context).size.height * .4,
                              width: MediaQuery.of(context).size.width * .5,
                              child: Column(
                                children: [
                                  CachedNetworkImage(
                                      width: double.infinity,
                                      height:
                                          MediaQuery.of(context).size.height *
                                              .3,
                                      fit: BoxFit.cover,
                                      imageUrl: state.storeModel
                                          .storeCategories[index].imgUrl),
                                  ElevatedButton(
                                      onPressed: () {},
                                      style: const ButtonStyle(
                                          shape: WidgetStatePropertyAll(
                                              RoundedRectangleBorder()),
                                          backgroundColor:
                                              WidgetStatePropertyAll(
                                                  Colors.black)),
                                      child: Text(
                                        "Shop now",
                                        style: GoogleFonts.anton(
                                            color: Colors.white),
                                      ))
                                ],
                              ),
                            ),
                          );
                        }),
                  )
                ],
              );
            } else {
              return Text("object");
            }
          }),
        ),
      ),
    );
  }
}

class PhotosCollWidget extends StatefulWidget {
  const PhotosCollWidget({
    super.key,
    required this.image,
  });
  final List image;
  @override
  State<PhotosCollWidget> createState() => _PhotosCollWidgetState();
}

class _PhotosCollWidgetState extends State<PhotosCollWidget>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 1),
      vsync: this,
    );

    // Start the animation
    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .4,
      width: double.infinity,
      child: Row(
        children: [
          SlideTransition(
            position: Tween<Offset>(
              begin: const Offset(-1, 0), // Start above the screen
              end: Offset.zero, // End at the original position
            ).animate(CurvedAnimation(
              parent: _controller,
              curve: Curves.easeInOut,
            )),
            child: Padding(
              padding: const EdgeInsets.only(left: 8),
              child: SizedBox(
                height: MediaQuery.of(context).size.height * .38,
                width: MediaQuery.of(context).size.width * .48,
                child: CachedNetworkImage(
                  imageUrl: widget.image[3],
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Column(
            children: [
              Row(
                children: [
                  SlideTransition(
                    position: Tween<Offset>(
                      begin: const Offset(1, 0), // Start above the screen
                      end: Offset.zero, // End at the original position
                    ).animate(CurvedAnimation(
                      parent: _controller,
                      curve: Curves.easeInOut,
                    )),
                    child: Padding(
                      padding: const EdgeInsets.only(
                          top: 8.0, left: 8, right: 8, bottom: 8),
                      child: SizedBox(
                        height: MediaQuery.of(context).size.height * .18,
                        width: MediaQuery.of(context).size.width * .2,
                        child: CachedNetworkImage(
                          imageUrl: widget.image[0],
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  SlideTransition(
                    position: Tween<Offset>(
                      begin: const Offset(1, 0), // Start above the screen
                      end: Offset.zero, // End at the original position
                    ).animate(CurvedAnimation(
                      parent: _controller,
                      curve: Curves.easeInOut,
                    )),
                    child: Padding(
                      padding: const EdgeInsets.only(
                        right: 8,
                      ),
                      child: SizedBox(
                        height: MediaQuery.of(context).size.height * .18,
                        width: MediaQuery.of(context).size.width * .23,
                        child: CachedNetworkImage(
                          imageUrl: widget.image[1],
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  )
                ],
              ),
              SlideTransition(
                position: Tween<Offset>(
                  begin: const Offset(1, 0), // Start above the screen
                  end: Offset.zero, // End at the original position
                ).animate(CurvedAnimation(
                  parent: _controller,
                  curve: Curves.easeInOut,
                )),
                child: Padding(
                  padding: const EdgeInsets.only(right: 0, left: 0, top: 9),
                  child: SizedBox(
                    height: MediaQuery.of(context).size.height * .18,
                    width: MediaQuery.of(context).size.width * .45,
                    child: CachedNetworkImage(
                      imageUrl: widget.image[2],
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}

class ItemWidget extends StatelessWidget {
  const ItemWidget({super.key, required this.imagess, required this.index});

  final List imagess;
  final int index;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Navigator.push(context,
        //     MaterialPageRoute(builder: (context) => const ProductViewScreen()));
      },
      child: SizedBox(
        height: MediaQuery.of(context).size.height * .4,
        width: MediaQuery.of(context).size.width * .5,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                CachedNetworkImage(
                    height: MediaQuery.of(context).size.height * .3,
                    width: MediaQuery.of(context).size.width * .5,
                    fit: BoxFit.cover,
                    imageUrl: imagess[index]),
                Positioned(
                  bottom: 0,
                  child: Container(
                    height: 30,
                    alignment: Alignment.center,
                    width: 40,
                    color: Colors.red,
                    child: Text("NEW",
                        style: GoogleFonts.anton(color: Colors.white)),
                  ),
                )
              ],
            ),
            Text(
              "              product[index].name.toString(",
              overflow: TextOverflow.ellipsis,
              style: GoogleFonts.abel(
                  fontWeight: FontWeight.w800, color: Colors.grey.shade600),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * .5,
              child: Row(
                children: [
                  Text(
                    (" product[index].price.toString()"),
                    style: GoogleFonts.abel(
                        fontWeight: FontWeight.w800, color: Colors.black),
                  ),
                  Text(
                    "1,900,00",
                    style: GoogleFonts.abel(
                        fontWeight: FontWeight.w800,
                        fontSize: 10,
                        decoration: TextDecoration.lineThrough,
                        color: Colors.black),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class ViewCollectionPhotosWidget extends StatefulWidget {
  const ViewCollectionPhotosWidget({
    super.key,
    required this.images,
  });

  final List images;

  @override
  State<ViewCollectionPhotosWidget> createState() =>
      _ViewCollectionPhotosWidgetState();
}

class _ViewCollectionPhotosWidgetState extends State<ViewCollectionPhotosWidget>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Offset> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 3),
      vsync: this,
    );

    _animation = Tween<Offset>(
      begin: const Offset(-1, 0), // Start above the screen
      end: Offset.zero, // End at the original position
    ).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.easeInOut,
    ));

    // Start the animation
    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return StaggeredGrid.count(
      crossAxisCount: 4,
      mainAxisSpacing: 4,
      crossAxisSpacing: 4,
      children: [
        SlideTransition(
          position: _animation,
          child: StaggeredGridTile.count(
            crossAxisCellCount: 2,
            mainAxisCellCount: 2,
            child: CachedNetworkImage(
                width: 100, fit: BoxFit.contain, imageUrl: widget.images[0]),
          ),
        ),
        SlideTransition(
          position: Tween<Offset>(
            begin: const Offset(0, -1), // Start above the screen
            end: Offset.zero, // End at the original position
          ).animate(CurvedAnimation(
            parent: _controller,
            curve: Curves.easeInOut,
          )),
          child: StaggeredGridTile.count(
            crossAxisCellCount: 2,
            mainAxisCellCount: 1,
            child: CachedNetworkImage(
                width: 100, fit: BoxFit.cover, imageUrl: widget.images[1]),
          ),
        ),
        SlideTransition(
          position: Tween<Offset>(
            begin: const Offset(0, -1), // Start above the screen
            end: Offset.zero, // End at the original position
          ).animate(CurvedAnimation(
            parent: _controller,
            curve: Curves.easeInOut,
          )),
          child: StaggeredGridTile.count(
            crossAxisCellCount: 1,
            mainAxisCellCount: 1,
            child: CachedNetworkImage(
                width: 100, fit: BoxFit.contain, imageUrl: widget.images[2]),
          ),
        ),
        SlideTransition(
          position: Tween<Offset>(
            begin: const Offset(-1, 0), // Start above the screen
            end: Offset.zero, // End at the original position
          ).animate(CurvedAnimation(
            parent: _controller,
            curve: Curves.easeInOut,
          )),
          child: StaggeredGridTile.count(
            crossAxisCellCount: 1,
            mainAxisCellCount: 1,
            child: CachedNetworkImage(
                width: 100, fit: BoxFit.contain, imageUrl: widget.images[3]),
          ),
        ),
      ],
    );
  }
}

class ImagesDesWidget extends StatelessWidget {
  const ImagesDesWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CachedNetworkImage(
                height: 300,
                width: MediaQuery.of(context).size.width * .5,
                fit: BoxFit.cover,
                imageUrl:
                    'https://www.dresscodeme.com/wp-content/uploads/2023/09/New-Arrival.png'),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CachedNetworkImage(
                height: 300,
                width: MediaQuery.of(context).size.width * .4,
                fit: BoxFit.cover,
                imageUrl:
                    'https://www.dresscodeme.com/wp-content/uploads/2023/09/JACKETS-1.jpg'),
          )
        ],
      ),
    );
  }
}

class TopPortfollioWidget extends StatelessWidget {
  const TopPortfollioWidget({
    super.key,
    required this.logo,
    required this.background,
    required this.title,
    required this.des,
  });
  final logo;
  final background;
  final title;
  final des;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .4,
      child: Stack(
        children: [
          CachedNetworkImage(
              // placeholder: ,
              width: double.infinity,
              height: MediaQuery.of(context).size.height * .3,
              fit: BoxFit.fill,
              imageUrl: background),
          Positioned(
            bottom: MediaQuery.of(context).size.height * .007,
            child: CircleAvatar(
              radius: MediaQuery.of(context).size.height * .089,
              backgroundColor: ColorManager.primaryColor,
              child: CircleAvatar(
                radius: MediaQuery.of(context).size.height * .085,
                backgroundColor: Colors.white,
                child: CachedNetworkImage(
                    width: MediaQuery.of(context).size.width * .25,
                    fit: BoxFit.contain,
                    imageUrl: logo),
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            right: MediaQuery.of(context).size.width * .05,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 8, right: 8, top: 5),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                        style: GoogleFonts.anton(fontSize: 18),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * .06,
                        width: MediaQuery.of(context).size.width * .5,
                        child: Text(
                          des,
                          style: GoogleFonts.lato(
                              fontSize: 12,
                              color: ColorManager.primaryColor,
                              fontWeight: FontWeight.w700),
                          overflow: TextOverflow.ellipsis,
                          maxLines: 2,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class StoreItemWidget extends StatelessWidget {
  const StoreItemWidget(
      {super.key, required this.product, required this.index});

  final List<StoreProduct> product;
  final int index;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Navigator.push(context,
        //     MaterialPageRoute(builder: (context) => const ProductViewScreen()));
      },
      child: SizedBox(
        height: MediaQuery.of(context).size.height * .4,
        width: MediaQuery.of(context).size.width * .5,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                CachedNetworkImage(
                    height: MediaQuery.of(context).size.height * .3,
                    width: MediaQuery.of(context).size.width * .5,
                    fit: BoxFit.cover,
                    imageUrl: product[index].images[0].imageUrl.toString()),
                Positioned(
                  bottom: 0,
                  child: Container(
                    height: 30,
                    alignment: Alignment.center,
                    width: 40,
                    color: Colors.red,
                    child: Text("NEW",
                        style: GoogleFonts.anton(color: Colors.white)),
                  ),
                )
              ],
            ),
            Text(
              product[index].name.toString(),
              overflow: TextOverflow.ellipsis,
              style: GoogleFonts.abel(
                  fontWeight: FontWeight.w800, color: Colors.grey.shade600),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * .5,
              child: Row(
                children: [
                  Text(
                    product[index].price.toString(),
                    style: GoogleFonts.abel(
                        fontWeight: FontWeight.w800, color: Colors.black),
                  ),
                  Text(
                    "1,900,00",
                    style: GoogleFonts.abel(
                        fontWeight: FontWeight.w800,
                        fontSize: 10,
                        decoration: TextDecoration.lineThrough,
                        color: Colors.black),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
