import 'package:flutter/material.dart';
import 'package:ncc_app/core/style.dart';
import 'package:ncc_app/views/products_view/products_view.dart';

class SectionWidget extends StatefulWidget {
  const SectionWidget({Key? key}) : super(key: key);

  @override
  State<SectionWidget> createState() => _SectionWidgetState();
}

class _SectionWidgetState extends State<SectionWidget> {

  List sec = [
    {
      'image' : 'image/everyday.png',
      'text' : 'Everyday Use Laptop'
    },
    {
      'image' : 'image/bui.png',
      'text' : 'Business Laptop'
    },
    {
      'image' : 'image/asus.png',
      'text' : 'Gaming Laptop'
    },
    {
      'image' : 'image/hua.png',
      'text' : 'Lightweight Laptop'
    },
    {
      'image' : 'image/tou.webp',
      'text' : 'Touch Screen Laptop'
    },
    {
      'image' : 'image/used1.png',
      'text' : 'Used Laptop'
    },
  ];
  int secIndex = 0;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      padding: EdgeInsets.all(height * 0.03),
      height: height,
      child: GridView.builder(
        itemCount: sec.length,
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: height * 0.02,
          mainAxisSpacing: height * 0.02,
        ),
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => ProductsView(name: sec[index]['text']),));
            },
            child: Container(
              decoration: BoxDecoration(
                color: Colors.black12.withOpacity(0.04),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: height * .16,
                    child: Image.asset(
                      sec[index]['image'],
                    ),
                  ),
                  Text(
                    sec[index]['text'],
                    style: Style.textStyle17,
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
