import 'package:flutter/material.dart';
import 'package:ncc_app/views/cart_view/widget/price_text.dart';

class PriceWidget extends StatefulWidget {
  const PriceWidget({Key? key}) : super(key: key);

  @override
  State<PriceWidget> createState() => _PriceWidgetState();
}

class _PriceWidgetState extends State<PriceWidget> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      padding: EdgeInsets.symmetric(horizontal:   height * 0.022,vertical:height * 0.01 ),
      child: Column(
        children: [
          const PriceText(text: 'Subtotal :', price: '120 JOD', discount: false),
          SizedBox(height: height * 0.02,),
          const PriceText(text: 'Delivery Fee :', price: '12 JOD', discount: false),
          SizedBox(height: height * 0.02,),
          const PriceText(text: 'Discount :', price: '10%', discount: true),
          SizedBox(height: height * 0.02,),
          const Divider(
            color: Colors.black26,
            thickness: 0.5,
            indent: 10,
            endIndent: 10,
            height: 1,
          ),
          SizedBox(height: height * 0.02,),
          const PriceText(text: 'Total :', price: '1100 JOD', discount: false),
          SizedBox(height: height * 0.02,),
        ],
      ),
    );
  }
}
