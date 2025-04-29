import 'package:flutter/material.dart';
import 'package:graduation/features/home/presentation/widgets/custom_container_widget.dart';

class Finalcontainer extends StatelessWidget {
  const Finalcontainer({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 15, right: 16),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: CustomContainer(
                  maintext: 'Staples',
                  image: 'assets/images/c43ef5d84f32d541f4746d71c4f82675.jpg',
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: CustomContainer(
                  maintext: 'Sproutes',
                  image: 'assets/images/4d49a7108db132150bf9c9125c8ee5a1.jpg',
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: CustomContainer(
                  maintext: 'Grocery outlet',
                  image: 'assets/images/151f03a8a627cdf8b8fee9ebe1d67aaa.jpg',
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: CustomContainer(
                  maintext: 'Mollie stones',
                  image: 'assets/images/0203b2e05549d0d03fa3d4a1551582e4.jpg',
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 15, right: 16),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: CustomContainer(
                  maintext: 'Sports Basement',
                  image: 'assets/images/0430bf16e89056a9301c106a4c595130.jpg',
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: CustomContainer(
                  maintext: 'Container Store',
                  image: 'assets/images/778d34770c352bb45ed3b9394b1540b6.jpg',
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: CustomContainer(
                  maintext: 'Target',
                  image: 'assets/images/959ce4ceb59e03701a343e73ca5eb3df.jpg',
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: CustomContainer(
                  maintext: 'Bevmo!',
                  image: 'assets/images/64185e5d291c410fd84041217d537f91.jpg',
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
