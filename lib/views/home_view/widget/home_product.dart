import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ncc_app/views/awidget/fav_button.dart';

import '../../../core/api.dart';
import '../../../core/style.dart';
import '../../../logic/fav_cubit/fav_cubit.dart';

class HomeProduct extends StatefulWidget {
  const HomeProduct(
      {Key? key,
      required this.name,
      required this.image,
      required this.brand,
      required this.price, required this.id})
      : super(key: key);

  final String name;
  final String image;
  final String brand;
  final num price;
  final int id;

  @override
  State<HomeProduct> createState() => _HomeProductState();
}

class _HomeProductState extends State<HomeProduct> {

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              width: width * 0.5,
              height: height * 0.13,
              decoration: BoxDecoration(
                  color: Colors.black12.withOpacity(0.04),
                  borderRadius: BorderRadius.circular(15),
                  image: DecorationImage(
                      image: NetworkImage(
                        '${Api.apiImage}/images/${widget.image}',
                      ),
                      fit: BoxFit.contain)),
            ),
            SizedBox(height: height * 0.01),
            SizedBox(
              width: width / 2.2,
              child: Text(
                widget.name,
                style: const TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                    fontSize: 17),
                maxLines: 3,
              ),
            ),
            SizedBox(height: height * 0.01),
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.brand,
                      style: Style.textStyle14,
                    ),
                    SizedBox(height: height * 0.01),
                    Text(
                      '${widget.price} JOD',
                      style: const TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: 17),
                    ),
                  ],
                ),
                SizedBox(width: width / 10),
                FavButton(
                    id: widget.id,),
              ],
            ),
          ],
        ),
        SizedBox(width: width * 0.05),
      ],
    );
  }
}
