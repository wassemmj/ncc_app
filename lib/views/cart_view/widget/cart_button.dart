import 'package:flutter/material.dart';

import '../../../core/color1.dart';

class CartButton extends StatelessWidget {
  const CartButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showDialog(context: context, builder: (context) {
          return const AlertDialog();
        },);
      },
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 20),
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: Color1.primaryColor,
          borderRadius: BorderRadius.circular(25),
        ),
        child: const Text(
          'Check out',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 19,
            fontWeight: FontWeight.w500,
            color: Color1.white,
          ),
        ),
      ),
    );
  }
}
