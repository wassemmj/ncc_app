import 'package:flutter/material.dart';

import '../../../../core/color1.dart';

class FooterText extends StatelessWidget {
  const FooterText({Key? key, required this.text1, required this.text2})
      : super(key: key);

  final IconData text1;
  final String text2;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      children: [
        Icon(text1,color: Colors.black54,size: 20,),
        const SizedBox(width: 15,),
        Text(
          text2,
          maxLines: 2,
          style: const TextStyle(
            color: Color1.black,
            fontSize: 18,
            fontWeight: FontWeight.w300,
          ),
        ),
      ],
    );
  }
}
