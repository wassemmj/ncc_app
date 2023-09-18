import 'package:flutter/material.dart';

import '../../../core/style.dart';

class FavWidget extends StatefulWidget {
  const FavWidget({Key? key}) : super(key: key);

  @override
  State<FavWidget> createState() => _FavWidgetState();
}
bool fav = false;

class _FavWidgetState extends State<FavWidget> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      height: height * 0.14,
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
                  IconButton(
                    onPressed: () {
                      setState(() {
                        fav = !fav;
                      });
                    },
                    icon: Icon(
                      !fav ? Icons.favorite : Icons.favorite_border,
                      color: !fav ? Colors.red : Colors.black,
                      size: (height / 39.42),
                    ),
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
