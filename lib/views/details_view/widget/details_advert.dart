import 'package:flutter/material.dart';
import 'package:ncc_app/core/color1.dart';
import 'package:ncc_app/core/style.dart';
import 'package:ncc_app/views/awidget/fav_button.dart';
import 'package:ncc_app/views/details_view/widget/buy_button.dart';

import 'buttons_increment.dart';
import 'description.dart';
import 'details_text.dart';

class DetailsAdvert extends StatefulWidget {
  const DetailsAdvert({Key? key, required this.price, required this.name, required this.discount, required this.brand, required this.description, this.discountPrice, required this.id}) : super(key: key);

  final num price;
  final String name;
  final bool discount;
  final String brand;
  final String description;
  final num? discountPrice;
  final int id;

  @override
  State<DetailsAdvert> createState() => _DetailsAdvertState();
}

class _DetailsAdvertState extends State<DetailsAdvert> {

  int quantity = 1;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      padding: EdgeInsets.all(height * 0.02),
      decoration: const BoxDecoration(
        color: Color1.white,
        borderRadius: BorderRadius.only(
            topRight: Radius.circular(50), topLeft: Radius.circular(50)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.name,
            style: const TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w500,
              fontSize: 19,
            ),
            maxLines: 3,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: height * 0.01),
                  DetailsText(text: widget.brand, style: Style.textStyle14),
                  SizedBox(height: height * 0.015),
                  Row(
                    children: [
                      DetailsText(
                          text: '${widget.price} JOD  ',
                          style: const TextStyle(
                            color: Color1.black,
                            fontWeight: FontWeight.w500,
                            fontSize: 20,
                          )),
                      widget.discount ? DetailsText(
                          text: '${widget.discountPrice} JOD',
                          style: const TextStyle(
                            color: Colors.red,
                            fontWeight: FontWeight.w500,
                            decoration: TextDecoration.lineThrough,
                            fontSize: 17,
                          )):Container(),
                    ],
                  ),
                ],
              ),
              FavButton(id: widget.id),
            ],
          ),
          SizedBox(height: height * 0.02),
          Description(text: widget.description),
          SizedBox(height: height * 0.17),
          Row(
            children: [
              ButtonIncrement(quantity: quantity, onChanged: (int check) {
                setState(() {
                  if (check == 1) {
                    quantity = quantity > 1
                        ? quantity - 1
                        : quantity = 1;
                  } else {
                    quantity = quantity + 1;
                  }
                }); },),
              BuyButton(productId: widget.id, quantity: quantity,),
            ],
          ),
        ],
      ),
    );
  }
}