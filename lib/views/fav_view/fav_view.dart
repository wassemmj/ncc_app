import 'package:flutter/material.dart';
import 'package:ncc_app/views/fav_view/widget/fav_widget.dart';

import '../../core/style.dart';
import '../products_view/widget/product_widget.dart';

class FavView extends StatefulWidget {
  const FavView({Key? key}) : super(key: key);

  @override
  State<FavView> createState() => _FavViewState();
}

class _FavViewState extends State<FavView> {
  List fav = [FavWidget()];

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Favorite Laptops',
          style: Style.textStyle23,
        ),
        leading: IconButton(onPressed: (){Navigator.of(context).pop();},icon: Icon(Icons.arrow_back,size: 23,color: Colors.black,),),
        actions: [],
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              fav.isNotEmpty
                  ? Container()
                  : SizedBox(
                      height: height / 2,
                    ),
              fav.isNotEmpty
                  ? Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
                      child: ListView.builder(
                          scrollDirection: Axis.vertical,
                          itemCount: fav.length,
                          shrinkWrap: true,
                          itemBuilder: (context, index) {
                            return const FavWidget();
                          }),
                    )
                  : const Center(
                      child: Text(
                        'There is not any favorites laptops,\n Add Some laptops',
                        textAlign: TextAlign.center,
                        style: Style.textStyle18,
                      ),
                    ),
            ],
          ),
        ),
      ),
      // floatingActionButton: fav.isEmpty
      //     ? FloatingActionButton(
      //   onPressed: () {
      //   },
      //
      //   backgroundColor: Color1.primaryColor,
      //   child: const Icon(
      //     Icons.favorite_border,
      //     color: Colors.white,
      //   ),
      // )
      //     : null,
    );
  }
}