import 'package:flutter/material.dart';

import '../../../../core/color1.dart';

class AdvertAdminWidget extends StatelessWidget {
  const AdvertAdminWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      height: height * 0.17,
      margin: const EdgeInsets.all(5),
      child: Stack(
        children: [
          Container(
            width: width - 50,
            decoration: BoxDecoration(
              image: const DecorationImage(
                image: AssetImage('image/b.jpg'),
                fit: BoxFit.fill,
              ),
              borderRadius: BorderRadius.circular(15),
            ),
          ),
          Positioned(
            right: 10,
            bottom: 10,
            child: ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25))),
                backgroundColor: MaterialStateProperty.all(Color1.primaryColor),
              ),
              child: const Text(
                'Shop now',
                style: TextStyle(fontWeight: FontWeight.w400, fontSize: 16),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
