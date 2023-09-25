import 'package:flutter/material.dart';

import '../../../core/style.dart';
import '../../nav_view/widget/appbar_icon.dart';
import '../awidget/discount_body.dart';

class DiscountView extends StatelessWidget {
  const DiscountView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: Container(
            padding: EdgeInsets.all((height / 108)),
            child: AppbarIcon(
              icon: Icons.arrow_back,
              onPressed: () {
                Navigator.of(context).pop();
              }, color: Colors.black54.withOpacity(0.03),)),
        title: Text(
          'Categories',
          style: Style.textStyle23,
        ),
        actions: [
          AppbarIcon(
            icon: Icons.percent_outlined,
            onPressed: () {
              showDialog(context: context, builder: (context) => DiscountBody(id: 0, type: 6),);
            }, color: Colors.black54.withOpacity(0.03),),
          SizedBox(width: (width / 82)),
        ],
      ),
    );
  }
}
