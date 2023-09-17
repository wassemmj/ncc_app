import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ncc_app/core/style.dart';
import 'package:ncc_app/views/nav_view/widget/appbar_icon.dart';
import 'package:ncc_app/views/products_view/widget/product_widget.dart';

import '../../core/color1.dart';
import '../../logic/cat_cubit/cat_cubit.dart';
import '../admin/products_admin_view/widget/product_empty.dart';
import '../admin/products_admin_view/widget/product_page_count.dart';


class ProductsView extends StatefulWidget {
  const ProductsView({Key? key, required this.name, required this.sectorId}) : super(key: key);

  final String name;
  final int sectorId;

  @override
  State<ProductsView> createState() => _ProductsViewState();
}

class _ProductsViewState extends State<ProductsView> {

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) async {
      await BlocProvider.of<CatCubit>(context).getProduct(widget.sectorId, 'desc');
    });
    super.initState();
  }

  int pageIndex = 0;

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
          child: BlocBuilder<CatCubit, CatState>(
            builder: (context, state) {
              if (state.status == CatStatus.loading ||
                  state.status == CatStatus.initial) {
                return Container(
                  alignment: Alignment.center,
                  height: height,
                  child: CircularProgressIndicator(
                    color: Color1.primaryColor,
                    strokeWidth: 1,
                  ),
                );
              }
              if (BlocProvider.of<CatCubit>(context).product == null) {
                return Container(
                  alignment: Alignment.center,
                  height: height,
                  child: CircularProgressIndicator(
                    color: Color1.primaryColor,
                    strokeWidth: 1,
                  ),
                );
              }
              if (BlocProvider.of<CatCubit>(context).product.containsKey('products')) {
                var products = BlocProvider.of<CatCubit>(context).product['products'];
                List productsData = products['data'];
                int pageCount = products['last_page'];
                List pageUrl = products['links'];
                int total = products['total'];
                return Container(
                  padding: EdgeInsets.all((height * 0.02)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.name,
                        style: Style.textStyleSec,
                      ),
                      SizedBox(
                        height: height * 0.03,
                      ),
                      GridView.extent(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        crossAxisSpacing: 15,
                        mainAxisSpacing: 15,
                        maxCrossAxisExtent: height * 0.4,
                        childAspectRatio: width / height * 1.2,
                        children: productsData
                            .map((e) => ProductWidget(name: e['name'], image: e['image'], brand: 'Asus Laptop', price: e['final_price'], id: e['id'],))
                            .toList(),
                      ),
                      pageCount != 1 ? ProductPageCount(
                          pageCount: pageCount,
                          pageIndex: pageIndex,
                          onPressed: (index) async {
                            setState(() {
                              pageIndex = index;
                            });
                            await BlocProvider.of<CatCubit>(context)
                                .api(pageUrl[index + 1]['url']);
                          }): const ProductEmpty(),
                      SizedBox(height: pageCount != 1 ? height * 0.02 : 0),
                    ],
                  ),
                );
              } else {
                return const ProductEmpty();
              }
            },
          ),
        ),
      ),
    );
  }
}


