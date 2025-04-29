import 'package:flutter/material.dart';

class Bigcard extends StatelessWidget {
  const Bigcard({super.key});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 16),
          child: Container(
            height: MediaQuery.of(context).size.height * .3,
            width: MediaQuery.of(context).size.height * .3,
            decoration: const BoxDecoration(
                image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage(
                "assets/images/778d34770c352bb45ed3b9394b1540b6.jpg",
              ),
            )),
            child: const Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(
                    Icons.favorite_border,
                    color: Colors.white,
                    size: 25.0,
                    semanticLabel: 'Text to announce in accessibility modes',
                  ),
                ],
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 16),
          child: SizedBox(
            height: MediaQuery.of(context).size.height * .2,
            width: MediaQuery.of(context).size.height * .31,
            child: Card(
              elevation: 0,
              color: Colors.transparent,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 16,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'HomePod mini',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 19,
                            ),
                          ),
                          Text(
                            r'$99.00',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 19,
                            ),
                          ),
                        ]),
                    const SizedBox(
                      height: 10,
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          '5 Colors Available',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                    const Row(
                      children: [
                        Icon(
                          Icons.star,
                          color: Colors.green,
                          size: 17.0,
                          semanticLabel:
                              'Text to announce in accessibility modes',
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.green,
                          size: 17.0,
                          semanticLabel:
                              'Text to announce in accessibility modes',
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.green,
                          size: 17.0,
                          semanticLabel:
                              'Text to announce in accessibility modes',
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.green,
                          size: 17.0,
                          semanticLabel:
                              'Text to announce in accessibility modes',
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.green,
                          size: 17.0,
                          semanticLabel:
                              'Text to announce in accessibility modes',
                        ),
                      ],
                    ),
                    ElevatedButton(
                      child: const Text(
                        'Add to Cart',
                        style: TextStyle(color: Colors.black),
                      ),
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
