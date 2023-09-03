import 'package:flutter/material.dart';

import '../../../core/style.dart';

class HomeProduct extends StatefulWidget {
  const HomeProduct({Key? key}) : super(key: key);

  @override
  State<HomeProduct> createState() => _HomeProductState();
}

class _HomeProductState extends State<HomeProduct> {
  bool fav = false;
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
                  image: const DecorationImage(
                      image: AssetImage(
                        'image/hua.png' ,
                      ),
                      fit: BoxFit.fitHeight
                  )
              ),
            ),
            SizedBox(height: height/85),
            SizedBox(
              width: width / 2.2,
              child: const Text(
                'Huawei Book kva 2023',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                    fontSize: 17
                ),
                maxLines: 2,
              ),
            ),
            SizedBox(height: height/85),
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Huawei laptop',
                      style: Style.textStyle14,
                    ),
                    SizedBox(height: height / 85),
                    const Text(
                      '120 JOD',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: 17
                      ),
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
        SizedBox(width: width / 35),
      ],
    );
  }
}
