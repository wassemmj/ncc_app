import 'package:flutter/material.dart';
import 'package:ncc_app/core/style.dart';
import 'package:ncc_app/views/details_view/widget/buy_button.dart';

import 'build_main_image.dart';
import 'buttons_increment.dart';
import 'details_text.dart';

class DetailsAdvert extends StatefulWidget {
  const DetailsAdvert({Key? key}) : super(key: key);
  static String path = 'image/asus.png';
  static  int temp=0 ;

  @override
  State<DetailsAdvert> createState() => _DetailsAdvertState();
}

class _DetailsAdvertState extends State<DetailsAdvert> {
  String price = '\$ 1000';
  String devicemodel = "Asus Rog Strix g7000";
  String devicetype = "Gaming Laptop";
  String description =
      "this laptop is very good he is have 4g ram this laptop is very good he is have 4g ram and corei7 11th ssd 256 gigabyte";

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          const ListViewBuilder(),
          Details_Text(devicemodel, Style.textStyle24),
          const SizedBox(
            height: 10,
          ),
          Details_Text(devicetype, Style.textStyle14),
          const SizedBox(
            height: 10,
          ),
          Details_Text(price, Style.textStyle22),
          const SizedBox(
            height: 20,
          ),
          Details_Text(description, Style.textStyle14),
          const SizedBox(
            height: 130,
          ),

           Align(
            alignment: Alignment.bottomRight,
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const[
                Buttonsincrement(),

                BuyButton(),

              ],
            ),
          ),
        ],
      ),
    );
  }

}
