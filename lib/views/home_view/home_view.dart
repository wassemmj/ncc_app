import 'package:flutter/material.dart';
import 'package:ncc_app/views/home_view/widget/home_advert.dart';
import 'package:ncc_app/views/home_view/widget/home_list_product.dart';
import 'package:ncc_app/views/home_view/widget/home_product.dart';
import 'package:ncc_app/views/home_view/widget/home_text.dart';

import '../../core/style.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    print((height / 3.9));
    return SafeArea(
      child: SingleChildScrollView(
        physics: height >= 800 ? const NeverScrollableScrollPhysics() : const BouncingScrollPhysics(),
        child: Container(
          padding: EdgeInsets.all((height / 43.37)),
          child: Column(
            children: [
              const HomeAdvert(),
              SizedBox(height: height / 43),
              const HomeText(text1: 'New Arrival', text2: 'See all',),
              SizedBox(height: height / 86.74),
              const HomeListProduct(),
              const HomeText(text1: 'Best Seller', text2: 'See all',),
              SizedBox(height: height / 86.74),
              const HomeListProduct(),
            ],
          ),
        ),
      ),
    );
  }
}
