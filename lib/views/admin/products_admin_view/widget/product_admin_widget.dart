import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ncc_app/core/api.dart';
import 'package:ncc_app/logic/delete_cubit/delete_cubit.dart';
import 'package:ncc_app/views/admin/awidget/delete_button.dart';
import 'package:ncc_app/views/admin/awidget/discount_button.dart';

import '../../../../core/style.dart';

class ProductAdminWidget extends StatelessWidget {
  const ProductAdminWidget(
      {Key? key,
      required this.name,
      required this.image,
      required this.brand,
      required this.price,
      required this.productId})
      : super(key: key);

  final String name;
  final String image;
  final String brand;
  final int price;
  final int productId;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return InkWell(
      onTap: () {},
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            width: width,
            height: height * 0.2,
            decoration: BoxDecoration(
                color: Colors.black12.withOpacity(0.04),
                borderRadius: BorderRadius.circular(15),
                image: DecorationImage(
                    image: NetworkImage(
                      '${Api.apiImage}/images/$image',
                    ),
                    fit: BoxFit.contain)),
          ),
          SizedBox(height: height / 85),
          SizedBox(
            width: width / 2.2,
            child: Text(
              name,
              style: const TextStyle(
                letterSpacing: 0,
                color: Colors.black,
                fontWeight: FontWeight.w500,
                fontSize: 17,
              ),
              maxLines: 3,
            ),
          ),
          SizedBox(height: height / 85),
          Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    brand,
                    style: Style.textStyle14,
                  ),
                  SizedBox(height: height / 85),
                  Text(
                    '$price JOD',
                    style: const TextStyle(
                        letterSpacing: 0,
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontSize: 17),
                    maxLines: 2,
                  ),
                ],
              ),
              DiscountButton(id: productId),
              DeleteButton(id: productId),
            ],
          ),
        ],
      ),
    );
  }
}
