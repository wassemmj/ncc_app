import 'package:flutter/material.dart';
import 'package:ncc_app/views/explore_view/widget/category_widget.dart';
import 'package:ncc_app/views/explore_view/widget/section_widget.dart';


class ExploreView extends StatefulWidget {
  const ExploreView({Key? key}) : super(key: key);

  @override
  State<ExploreView> createState() => _ExploreViewState();
}

class _ExploreViewState extends State<ExploreView> {
  List e = [
    'Laptop',
    'Desktop',
    'Monitor',
    'Gaming',
    'Storage',
    'Hardware',
    'Audio',
    'Printer',
    'Scanner',
    'Accessories',
    'Software',
    'Tvs'
  ];

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        physics: const NeverScrollableScrollPhysics(),
        child: Column(
          children: [
            CategoryWidget(set : (index) => setState(() => currentIndex=index),currentIndex: currentIndex, ),
            const SectionWidget(),
          ],
        ),
      ),
    );
  }
}
