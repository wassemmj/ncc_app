import 'package:flutter/material.dart';
import 'package:ncc_app/views/admin/products_admin_view/widget/product_admin_widget.dart';

import '../../../core/style.dart';
import '../../nav_view/widget/appbar_icon.dart';

class ProductsAdminView extends StatefulWidget {
  const ProductsAdminView({Key? key, required this.name}) : super(key: key);

  final String name;

  @override
  State<ProductsAdminView> createState() => _ProductsAdminViewState();
}

class _ProductsAdminViewState extends State<ProductsAdminView> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        leading: Container(
          padding: EdgeInsets.all((height / 108)),
          child: AppbarIcon(
            icon: Icons.arrow_back,
            onPressed: () => Navigator.of(context).pop(),
          ),
        ),
        actions: [
          AppbarIcon(
            icon: Icons.add,
            onPressed: () {},
          ),
          SizedBox(width: (width / 41)),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Container(
            padding: EdgeInsets.all((height / 43.37)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.name,
                  style: Style.textStyleSec,
                ),
                SizedBox(height: height * 0.03,),
                GridView.extent(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  crossAxisSpacing: 15,
                  mainAxisSpacing: 15,
                  maxCrossAxisExtent: 300,
                  childAspectRatio: width/height * 1.2,
                  children: const [
                    ProductAdminWidget(),
                    ProductAdminWidget(),
                    ProductAdminWidget(),
                    ProductAdminWidget(),
                    ProductAdminWidget(),
                    ProductAdminWidget(),
                    ProductAdminWidget(),
                    ProductAdminWidget(),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
