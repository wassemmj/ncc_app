import 'package:flutter/material.dart';
import 'package:ncc_app/core/style.dart';
import 'package:ncc_app/views/details_view/widget/details_advert.dart';
import '../nav_view/widget/appbar_icon.dart';
class Details_view extends StatefulWidget {
  const Details_view({Key? key}) : super(key: key);

  @override
  State<Details_view> createState() => Details_viewState();
}

class Details_viewState extends State<Details_view> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor:       const Color.fromRGBO(0, 0, 0,0.03),

      leading: AppbarIcon(
          icon: Icons.arrow_back,
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        centerTitle: true,
        title: Text(
          'Details',
          style: Style.textStyle23,
        ),
        actions: [
          AppbarIcon(icon: Icons.favorite, onPressed: () {}),
        ],
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            children:const  [
               DetailsAdvert(),
            ],
          ),
        ),
      ),
    );
  }

  }

