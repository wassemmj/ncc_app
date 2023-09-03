import 'package:flutter/material.dart';

import '../../../core/style.dart';

class ProductWidget extends StatefulWidget {
  const ProductWidget({Key? key}) : super(key: key);

  @override
  State<ProductWidget> createState() => _ProductWidgetState();
}

class _ProductWidgetState extends State<ProductWidget> {

  bool fav = false;
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return InkWell(
      onTap: () {},
      child: Container(
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
                  image: const DecorationImage(
                      image: AssetImage(
                        'image/asus.png',
                      ),
                      fit: BoxFit.fitHeight
                  )
              ),
            ),
            SizedBox(height: height/85),
            SizedBox(
              width: width / 2.2,
              child: const Text(
                'Asus Rog Strikes 2023 Core i9-11500 Nvidia 3060 Rtx',
                style: TextStyle(
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
                    const Text(
                      'Asus Laptop',
                      style: Style.textStyle14,
                    ),
                    SizedBox(height: height / 85),
                    const Text(
                      '999 JOD',
                      style: TextStyle(
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
                Container(
                  width: (height / 21.68),
                  decoration: BoxDecoration(
                    color: Colors.black12.withOpacity(0.03),
                    shape: BoxShape.circle,
                  ),
                  child: IconButton(
                    onPressed: () {
                      setState(() {
                        fav = !fav;
                      });
                    },
                    icon: Icon(
                      fav ? Icons.favorite : Icons.favorite_border,
                      color: fav ? Colors.red : Colors.black,
                      size: (height / 39.42),
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
