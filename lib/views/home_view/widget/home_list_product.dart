import 'package:flutter/material.dart';

import 'home_product.dart';

class HomeListProduct extends StatefulWidget {
  const HomeListProduct({Key? key}) : super(key: key);

  @override
  State<HomeListProduct> createState() => _HomeListProductState();
}

class _HomeListProductState extends State<HomeListProduct> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width  = MediaQuery.of(context).size.width;
    return SizedBox(
      height: (height * 0.25),
      child: ListView.builder(
        itemCount: 2,
        shrinkWrap: true,
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return const HomeProduct();
        },
      ),
    );
  }
}
