import 'package:flutter/material.dart';

import '../../../core/style.dart';

class HomeText extends StatelessWidget {
  const HomeText({Key? key, required this.text1, required this.text2}) : super(key: key);

  final String text1;
  final String text2;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text1,
          style: Style.textStyle22,
        ),
        Text(
          text2,
          style: Style.textStyle14,
        ),
      ],
    );
  }
}
