import 'package:flutter/material.dart';

import 'details_advert.dart';
class BuildImages extends StatefulWidget {
  const BuildImages(
      {Key? key,
        required this.pathofimages,
        required this.pathofimages2,
        required this.pathofimages3,
        required this.pathofimages4})
      : super(key: key);

  final String pathofimages;
  final String pathofimages2;
  final String pathofimages3;
  final String pathofimages4;

  @override
  State<BuildImages> createState() => _BuildImagesState();
}

class _BuildImagesState extends State<BuildImages> {
   int index=6;
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Container(
          decoration: const BoxDecoration(
              color: Color.fromRGBO(0, 0, 0,0.03),
              ),
          width: width,
          height: height / 2.5,
          child: Column(
            children: [
              SizedBox(height: height / 4, width: width / 1.4, child: Image.asset(DetailsAdvert.path)),
              Row(
                children: [
                  Container(
                    margin: const EdgeInsets.all(15),
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(0, 0, 0,0.06),
                      shape: BoxShape.circle,
                      //border: Border.all(color: index == 0 ? Colors.amberAccent : Colors.white, width: 2),
                      border: Border.all(color: DetailsAdvert.path == 'image/asus.png' ? Colors.amberAccent : Colors.white, width: 2),
                    ),
                    child: GestureDetector(
                        onTap: () {
                          setState(() {
                            DetailsAdvert.path = widget.pathofimages;
                            // index = 0;
                          });
                        },
                        child: Image.asset(widget.pathofimages)),
                  ),
                  Container(
                    margin: const EdgeInsets.all(20),
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(0, 0, 0,0.06),
                      shape: BoxShape.circle,
                      border: Border.all(color:  DetailsAdvert.path == 'image/everyday.png'? Colors.amberAccent : Colors.white, width: 2),
                      // border: Border.all(color: index == 1 ? Colors.amberAccent : Colors.white, width: 2),
                    ),
                    child: GestureDetector(
                        onTap: () {
                          setState(() {
                            DetailsAdvert.path = widget.pathofimages2;
                            // index = 1;
                          });
                        },
                        child: Image.asset(widget.pathofimages2)),
                  ),
                  Container(
                    margin: const EdgeInsets.all(20),
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(0, 0, 0,0.06),
                      shape: BoxShape.circle,
                      border: Border.all(color:  DetailsAdvert.path == 'image/bui.png' ? Colors.amberAccent : Colors.white, width: 2),
                      // border: Border.all(color: index == 2 ? Colors.amberAccent : Colors.white, width: 2),
                    ),
                    child: GestureDetector(
                        onTap: () {
                          setState(() {
                            // index = 2;
                            DetailsAdvert.path = widget.pathofimages3;
                          });
                        },
                        child: Image.asset(widget.pathofimages3)),
                  ),
                  Container(
                    margin: const EdgeInsets.all(20),
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(0, 0, 0,0.06),
                      shape: BoxShape.circle,
                      border: Border.all(color: DetailsAdvert.path == 'image/mic.png' ? Colors.amberAccent : Colors.white, width: 2),
                      // border: Border.all(color: index == 3 ? Colors.amberAccent : Colors.white, width: 2),
                    ),
                    child: GestureDetector(
                        onTap: () {
                          setState(() {
                            // index = 3;
                            DetailsAdvert.path = widget.pathofimages4;
                          });
                        },
                        child: Image.asset(widget.pathofimages4)),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}