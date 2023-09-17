import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ncc_app/views/sector_view/widget/sector_widget.dart';

import '../../core/color1.dart';
import '../../core/style.dart';
import '../../logic/cat_cubit/cat_cubit.dart';
import '../nav_view/widget/appbar_icon.dart';
import '../products_view/widget/product_out.dart';

class SectorView extends StatefulWidget {
  const SectorView({Key? key, required this.secId, required this.sectionName}) : super(key: key);

  final int secId;
  final String sectionName;

  @override
  State<SectorView> createState() => _SectorViewState();
}

class _SectorViewState extends State<SectorView> {
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) async {
      BlocProvider.of<CatCubit>(context).getSector(widget.secId, 'desc');
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
        centerTitle: true,
        title: Text(
          widget.sectionName,
          style: Style.textStyle23,
        ),
        leading: Container(
            padding: EdgeInsets.all((height / 108)),
            child: AppbarIcon(
                icon: Icons.arrow_back,
                onPressed: () {
                  Navigator.of(context).pop();
                })),
      ),
      body: SafeArea(
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
            if (BlocProvider.of<CatCubit>(context).sectors == null) {
              return Container(
                alignment: Alignment.center,
                height: height,
                child: CircularProgressIndicator(
                  color: Color1.primaryColor,
                  strokeWidth: 1,
                ),
              );
            }
            Map sector = BlocProvider.of<CatCubit>(context).sectors;
            if (sector.containsKey('sector')) {
              var sectors =
                  BlocProvider.of<CatCubit>(context).sectors['sector'];
              return SectorWidget(sectors: sectors);
            }
            var pageUrl = sector['products']['links'];
            return ProductOut(pageIndex: pageIndex, product: sector, onPressed: (index) async {
              setState(() {
                pageIndex = index;
              });
              await BlocProvider.of<CatCubit>(context)
                  .api(pageUrl[index + 1]['url']);
            },);
          },
        ),
      ),
    );
  }
}
