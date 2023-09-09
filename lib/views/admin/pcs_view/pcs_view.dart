import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:ncc_app/views/admin/create_category/create_category.dart';
import 'package:ncc_app/views/admin/pcs_view/widget/pcs_widget.dart';

import '../../../core/color1.dart';
import '../../../core/style.dart';
import '../../nav_view/widget/appbar_icon.dart';

class PCSView extends StatefulWidget {
  const PCSView({Key? key}) : super(key: key);

  @override
  State<PCSView> createState() => _PCSViewState();
}

class _PCSViewState extends State<PCSView> {
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

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: Container(padding: EdgeInsets.all((height / 108)),child: AppbarIcon(icon: Icons.arrow_back, onPressed: () {Navigator.of(context).pop();})),
        title: Text(
          'Categories',
          style: Style.textStyle23,
        ),
        actions: [
          AppbarIcon(icon: Icons.add, onPressed: () {Navigator.of(context).push(MaterialPageRoute(builder: (context) => const CreateCategory(),));}),
          SizedBox(width: (width / 82)),
        ],
      ),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all((height / 43.37)),
          width: width,
          child: ListView.builder(
            physics: const BouncingScrollPhysics(),
            itemCount: e.length,
            itemBuilder: (context, index) {
              return PCSWidget(name: e[index]);
            },
          ),
        ),
      ),
    );
  }
}
