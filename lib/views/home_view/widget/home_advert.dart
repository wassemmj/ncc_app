import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../../../core/color1.dart';

class HomeAdvert extends StatelessWidget {
  const HomeAdvert({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    List<Widget> c = [
      Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Stack(
            children: [
              Container(
                width: width - 50,
                decoration: BoxDecoration(
                  image: const DecorationImage(
                    image: AssetImage('image/b.jpg'),
                    fit: BoxFit.fill,
                  ),
                  // boxShadow: [
                  //   BoxShadow(
                  //     color: Colors.black.withOpacity(0.5),
                  //     blurRadius: 15.0,
                  //     offset: const Offset(0, 1),
                  //   ),
                  // ],
                  // color: Colors.black,
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
          // SizedBox(width: (width/41))
        ],
      ),
      Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Stack(
            children: [
              Container(
                width: width - 50,
                decoration: BoxDecoration(
                  image: const DecorationImage(
                    image: AssetImage('image/laptop.webp'),
                    fit: BoxFit.fill,
                  ),
                  // boxShadow: [
                  //   BoxShadow(
                  //     color: Colors.black.withOpacity(0.5),
                  //     blurRadius: 15.0,
                  //     offset: const Offset(0, 1),
                  //   ),
                  // ],
                  color: Colors.black,
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
              const Positioned(
                left: 10,
                bottom: 30,
                child: SizedBox(
                  width: 70,
                  child: Text(
                    'new Laptop added',
                    maxLines: 3,
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w300,
                        fontSize: 20),
                  ),
                ),
              ),
            ],
          ),
          // SizedBox(width: (width/41))
        ],
      ),
    ];
    return CarouselSlider(
      items: c,
      options: CarouselOptions(
        height: (height / 17.34 * 3),
        aspectRatio: width / height,
        viewportFraction: height / width / 2,
        initialPage: 0,
        autoPlay: false,
        autoPlayInterval: const Duration(seconds: 10),
        autoPlayAnimationDuration: const Duration(seconds: 5),
      ),
    );
  }
}
