import 'package:flutter/material.dart';
import 'package:ncc_app/core/style.dart';
import 'package:ncc_app/views/nav_view/widget/appbar_icon.dart';
import 'package:ncc_app/views/products_view/widget/product_widget.dart';


class ProductsView extends StatefulWidget {
  const ProductsView({Key? key, required this.name}) : super(key: key);

  final String name;

  @override
  State<ProductsView> createState() => _ProductsViewState();
}

class _ProductsViewState extends State<ProductsView> {

  bool fav = false;

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
            icon: Icons.more_horiz_outlined,
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
                    ProductWidget(),
                    ProductWidget(),
                    ProductWidget(),
                    ProductWidget(),
                    ProductWidget(),
                    ProductWidget(),
                    ProductWidget(),
                    ProductWidget(),
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
