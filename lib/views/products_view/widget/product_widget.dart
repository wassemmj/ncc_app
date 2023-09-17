import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ncc_app/views/awidget/fav_button.dart';

import '../../../core/api.dart';
import '../../../core/style.dart';
import '../../../logic/fav_cubit/fav_cubit.dart';

class ProductWidget extends StatefulWidget {
  const ProductWidget({Key? key, required this.name, required this.image, required this.brand, required this.price, required this.id}) : super(key: key);

  final String name;
  final String image;
  final String brand;
  final int price;
  final int id;
  
  @override
  State<ProductWidget> createState() => _ProductWidgetState();
}

class _ProductWidgetState extends State<ProductWidget> {
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
                      '${Api.apiImage}/images/${widget.image}',
                    ),
                    fit: BoxFit.contain,
                )
            ),
          ),
          SizedBox(height: height/85),
          SizedBox(
            width: width / 2.2,
            child: Text(
              widget.name,
              style: const TextStyle(
                letterSpacing: 0,
                color: Colors.black,
                fontWeight: FontWeight.w500,
                fontSize: 17,
              ),
              maxLines: 3,
            ),
          ),
          SizedBox(height: height/85),
          Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.brand,
                    style: Style.textStyle14,
                  ),
                  SizedBox(height: height / 85),
                  Text(
                    '${widget.price} JOD',
                    style: const TextStyle(
                        letterSpacing: 0,
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontSize: 17
                    ),
                    maxLines: 2,
                  ),
                ],
              ),
              SizedBox(width: width / 10),
              FavButton(id: widget.id,),
            ],
          ),
        ],
      ),
    );
  }
}
