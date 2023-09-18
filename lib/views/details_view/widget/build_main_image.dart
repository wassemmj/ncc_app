import 'package:flutter/material.dart';

import 'build_images_Container.dart';
import 'details_advert.dart';

class ListViewBuilder extends StatefulWidget {
  const ListViewBuilder({Key? key}) : super(key: key);

  @override
  State<ListViewBuilder> createState() => _ListViewBuilderState();
}

class _ListViewBuilderState extends State<ListViewBuilder> {
  List<Widget> c = [
    const BuildImages(
      pathofimages: 'image/asus.png',
      pathofimages2: 'image/everyday.png',
      pathofimages3: 'image/bui.png',
      pathofimages4: 'image/mic.png',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    initState() {
      setState(() {
        DetailsAdvert.path;
      });
    }

    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    initState();
    return Column(
      children: [
        SizedBox(
          height: height / 2.4,
          width: width,
          child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: c.length,
              itemBuilder: (BuildContext context, int index) {
                return ListView(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  children: [
                    c[index],
                  ],
                );
              }),
        ),
      ],
    );
  }
}

