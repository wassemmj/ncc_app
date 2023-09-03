import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

import '../../../core/color1.dart';
import '../../../core/style.dart';
import 'increment_cart.dart';

class CartWidget extends StatefulWidget {
  const CartWidget({Key? key}) : super(key: key);

  @override
  State<CartWidget> createState() => _CartWidgetState();
}

class _CartWidgetState extends State<CartWidget> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Slidable(
      startActionPane: ActionPane(
        motion: const StretchMotion(),
        key: const ValueKey(0),
        children:  [
          SlidableAction(
            key: const ValueKey(0),
            onPressed: (context){
              print('delete');
            },
            backgroundColor: Color1.white,
            foregroundColor: const Color(0xFFFE4A49),
            icon: Icons.delete,
          ),
        ],
      ),
      child: Container(
        height: height * 0.12,
        margin: EdgeInsets.all(height * 0.022),
        decoration: const BoxDecoration(
            border: Border(
              bottom: BorderSide(color: Colors.black54, width: 0.2),
            )),
        child: Row(
          children: [
            Container(
              width: width * 0.3,
              height: height * 0.11,
              decoration: BoxDecoration(
                  color: Colors.black12.withOpacity(0.04),
                  borderRadius: BorderRadius.circular(25),
                  image: const DecorationImage(
                      image: AssetImage(
                        'image/asus.png',
                      ),
                      fit: BoxFit.contain)),
            ),
            const SizedBox(
              width: 15,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: width / 2.2,
                  child: const Text(
                    'Huawei Book kva 2023',
                    style: TextStyle(
                        letterSpacing: 0,
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontSize: 17),
                    maxLines: 2,
                  ),
                ),
                SizedBox(height: (height / 85)),
                const Text(
                  'Huawei laptop',
                  style: Style.textStyle14,
                ),
                SizedBox(height: (height / 85)),
                Row(
                  children: [
                    const Text(
                      '120 JOD',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: 17),
                    ),
                    SizedBox(width: (width * 0.2)),
                    const IncrementCart(),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
