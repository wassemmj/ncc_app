import 'package:flutter/material.dart';
import 'package:ncc_app/core/color1.dart';
import 'package:ncc_app/views/cart_view/widget/cart_button.dart';
import 'package:ncc_app/views/cart_view/widget/cart_widget.dart';
import 'package:ncc_app/views/cart_view/widget/price_widget.dart';

/*
CircleAvatar(
  radius: 30,
  backgroundColor: Colors.greenAccent, //<-- SEE HERE
  child: IconButton(
    icon: Icon(
      Icons.flight,
      color: Colors.black,
    ),
    onPressed: () {},
  ),
)
 */

class CartView extends StatefulWidget {
  const CartView({Key? key}) : super(key: key);

  @override
  State<CartView> createState() => _CartViewState();
}

class _CartViewState extends State<CartView> {
  double height = 0, width = 0;

  List e = [1];

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: e.isNotEmpty ? [
          const SliverToBoxAdapter(
            child: Divider(
              color: Colors.black26,
              thickness: 0.2,
              height: 1,
            ),
          ),
          SliverToBoxAdapter(
            child: ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: 3,
              itemBuilder: (context, index) {
                return const CartWidget();
              },
            ),
          ),
          const SliverToBoxAdapter(child: PriceWidget()),
          const SliverToBoxAdapter(
              child: CartButton(),
          ),
        ] : [
          SliverToBoxAdapter(
            child: Container(height: height * 0.8 ,alignment: Alignment.center,child: const Text(
              'Cart is Empty, Explore Product to buy ',
              style: TextStyle(
                color: Color1.black,
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
            ),),
          ),
        ],
      ),
    );
  }
}
