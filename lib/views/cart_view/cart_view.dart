import 'package:flutter/material.dart';
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

/*
Material(
  type: MaterialType.transparency,
  child: Ink(
    decoration: BoxDecoration(
      border: Border.all(color: Colors.green, width: 7.0),
      color: Colors.greenAccent,
      shape: BoxShape.circle,
    ),
    child: InkWell(
      borderRadius: BorderRadius.circular(500.0),
      onTap: () {},
      child: Padding(
        padding: EdgeInsets.all(20.0),
        child: Icon(
          Icons.directions_walk,
          size: 30.0,
          color: Colors.black,
        ),
      ),
    ),
  ),
)
 */
class _CartViewState extends State<CartView> {
  int value = 1;

  double height = 0, width = 0;

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: [
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
        ],
      ),
    );
  }
}

/*
SizedBox(
                                height: 20,
                                // decoration: BoxDecoration(
                                //   color: Colors.black12.withOpacity(0.03),
                                //   borderRadius: BorderRadius.circular(25),
                                // ),
                                child: Row(
                                  children: [
                                    ElevatedButton(
                                      onPressed: () {
                                        setState(() {
                                          if(value==1) {
                                            return;
                                          }
                                          value--;
                                        });
                                      },
                                      style: ButtonStyle(
                                          padding: MaterialStateProperty.all(new EdgeInsets.all(0.0)),
                                          backgroundColor: MaterialStateProperty.all(Color1.white),
                                          shape: MaterialStateProperty.all(const CircleBorder()),
                                          side: MaterialStateProperty.all(const BorderSide(color: Color1.black))
                                      ),
                                      child: Icon(
                                        Icons.remove,
                                        color: Color1.black,
                                        size: (height * .02),
                                      ),
                                    ),
                                    Text(
                                      '$value',
                                      style: const TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 15
                                      ),
                                    ),
                                    ElevatedButton(
                                      onPressed: () {
                                        setState(() {
                                          value++;
                                        });
                                      },
                                      style: ButtonStyle(
                                          padding: MaterialStateProperty.all(new EdgeInsets.all(0.0)),
                                          backgroundColor: MaterialStateProperty.all(Color1.black),
                                          shape: MaterialStateProperty.all(const CircleBorder()),
                                          side: MaterialStateProperty.all(const BorderSide(color: Color1.black))
                                      ),
                                      child: Icon(
                                        Icons.add,
                                        color: Color1.white,
                                        size: (height * .02),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
 */
