import 'package:flutter/material.dart';
import 'package:ncc_app/views/home_view/widget/home_advert.dart';

import '../../core/style.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  bool fav = false;
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    print((height / 3.9));
    return SafeArea(
      child: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all((height / 43.37)),
          child: Column(
            children: [
              const HomeAdvert(),
              SizedBox(height: height / 43),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    'New Arrival',
                    style: Style.textStyle22,
                  ),
                  Text(
                    'See all',
                    style: Style.textStyle14,
                  ),
                ],
              ),
              SizedBox(height: height / 86.74),
              SizedBox(
                height: (height/3.9),
                child: ListView.builder(
                  itemCount: 2,
                  shrinkWrap: true,
                  physics: const BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.black12.withOpacity(0.04),
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Image.asset(
                                'image/hua.png',
                                fit: BoxFit.fill,
                                width: width / 2.2,
                              ),
                            ),
                            SizedBox(height: height/85),
                            SizedBox(
                              width: width / 2.2,
                              child: const Text(
                                'Huawei Book kva 2023',
                                style: TextStyle(
                                  letterSpacing: 0,
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
                        SizedBox(width: width / 35),
                      ],
                    );
                  },
                ),
              ),
              // best saller
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    'Best Seller',
                    style: Style.textStyle22,
                  ),
                  Text(
                    'See all',
                    style: Style.textStyle14,
                  ),
                ],
              ),
              SizedBox(height: height / 86.74),
              SizedBox(
                height: (height/3.9),
                child: ListView.builder(
                  itemCount: 2,
                  shrinkWrap: true,
                  physics: const BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.black12.withOpacity(0.04),
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Image.asset(
                                'image/mic.png',
                                fit: BoxFit.fill,
                                width: width / 2.2,
                              ),
                            ),
                            SizedBox(height: height/85),
                            SizedBox(
                              width: width / 2.2,
                              child: const Text(
                                'Surface Laptop Studio',
                                style: TextStyle(
                                    letterSpacing: 0,
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
                                      'Microsoft laptop',
                                      style: Style.textStyle14,
                                    ),
                                    SizedBox(height: height / 85),
                                    const Text(
                                      '120 JOD',
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
                        SizedBox(width: width / 35),
                      ],
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
