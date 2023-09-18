import 'package:flutter/material.dart';
import 'package:ncc_app/core/color1.dart';

import '../../cart_view/cart_view.dart';

class AppbarIcon extends StatelessWidget {
  const AppbarIcon({Key? key, required this.icon, required this.onPressed}) : super(key: key);

  final IconData icon;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      width: (height / 21.68),
      decoration: BoxDecoration(
          color: Colors.white,
          shape: BoxShape.circle,
      ),
      child: IconButton(
        onPressed: onPressed,
        icon: Icon(
          icon,
          color: Color1.black,
          size: (height / 39.42),
        ),
      ),
    );
  }
}

