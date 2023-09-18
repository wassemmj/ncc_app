import 'package:flutter/material.dart';

import '../../../core/style.dart';
import 'details_advert.dart';
class Buttonsincrement extends StatefulWidget {
  const Buttonsincrement({Key? key}) : super(key: key);

  @override
  State<Buttonsincrement> createState() => _ButtonsincrementState();
}

class _ButtonsincrementState extends State<Buttonsincrement> {
  @override
  Widget build(BuildContext context) {
    int type2 = DetailsAdvert.temp;
    return Row(
      children: [


        buildbuttons(Colors.white, '-',1,Colors.black),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text('$type2',style: Style.textStyle18,),
        ),
        buildbuttons(Colors.black,  '+',2,Colors.white),
      ],
    );
  }

  GestureDetector buildbuttons(Color Containercolor,  String symb,int check,Color textcolor) {
    return GestureDetector(
      onTap: () {
        setState(() {
          if (check == 1) {
            DetailsAdvert.temp = DetailsAdvert.temp>0?DetailsAdvert.temp - 1:DetailsAdvert.temp=0;
          } else {
            DetailsAdvert.temp = DetailsAdvert.temp + 1;
          }
        });
      },
      child: Container(
        height: 30,
        width: 30,
        decoration: BoxDecoration(shape: BoxShape.circle, color: Containercolor,border: Border.all(color: Colors.black)),
        child: Center(
            child: Text(
              symb,
              style: Style.textStyle20.copyWith(color: textcolor),
            )),
      ),
    );
  }
}

