import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ncc_app/logic/details_cubit/details_cubit.dart';
import 'package:ncc_app/views/details_view/widget/build_images.dart';
import 'package:ncc_app/views/details_view/widget/details_advert.dart';

import '../../core/color1.dart';

class DetailsView extends StatefulWidget {
  const DetailsView({Key? key, required this.productId}) : super(key: key);

  final int productId;

  @override
  State<DetailsView> createState() => _DetailsViewState();
}

class _DetailsViewState extends State<DetailsView> {
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) async {
      await BlocProvider.of<DetailsCubit>(context, listen: false)
          .getDetails(widget.productId);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: BlocBuilder<DetailsCubit, DetailsState>(
        builder: (context, state) {
          if (state.status == DetailsStatus.initial ||
              state.status == DetailsStatus.loading) {
            return Container(
              alignment: Alignment.center,
              height: height,
              child: CircularProgressIndicator(
                color: Color1.primaryColor,
                strokeWidth: 1,
              ),
            );
          }
          else if (BlocProvider.of<DetailsCubit>(context).details == null) {
            return Container(
              alignment: Alignment.center,
              height: height,
              child: CircularProgressIndicator(
                color: Color1.primaryColor,
                strokeWidth: 1,
              ),
            );
          }
          var details =
              BlocProvider.of<DetailsCubit>(context).details['products'];
          var image = details['images'];
          List images = [];
          for(int i = 0;i< image.length;i++) {
            images.add(image[i]['name']);
          }
          return SafeArea(
            child: SingleChildScrollView(
              physics: const RangeMaintainingScrollPhysics(),
              child: Container(
                color: Colors.black54.withOpacity(0.03),
                child: Column(
                  children: [
                    BuildImages(images: images, type: details['Type'],),
                    DetailsAdvert(
                      price: details['price'],
                      name: details['name'],
                      discountPrice: details['final_price'],
                      discount: details['price'] != details['final_price'],
                      brand: details['Brand'],
                      description: details['desc'],
                      id: details['id'],
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
