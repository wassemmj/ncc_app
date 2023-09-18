import 'package:flutter/material.dart';
import 'package:ncc_app/core/style.dart';

class BuyButton extends StatelessWidget {
  const BuyButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {

        showDialog(
          context: context,
          builder: (context) {
            return const AlertDialog(
              content:  Text('add to cart is done',style: Style.textStyle18,),
            );
          },
        );
      },
      child: Container(
        padding: const EdgeInsets.only(left: 70, right: 70, top: 10, bottom: 10),
        decoration: BoxDecoration(
          color: Colors.amberAccent,
          borderRadius: BorderRadius.circular(25),
        ),
        child: const Text(
          'Add to cart ',
          textAlign: TextAlign.center,
          style: Style.textStyle20,
        ),
      ),
    );
  }
}
