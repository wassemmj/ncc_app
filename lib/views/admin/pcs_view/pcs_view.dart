import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:ncc_app/views/admin/create_category/create_category.dart';
import 'package:ncc_app/views/admin/pcs_view/widget/pcs_widget.dart';

import '../../../core/color1.dart';
import '../../../core/style.dart';
import '../../../logic/cat_cubit/cat_cubit.dart';
import '../../nav_view/widget/appbar_icon.dart';

class PCSView extends StatefulWidget {
  const PCSView({Key? key}) : super(key: key);

  @override
  State<PCSView> createState() => _PCSViewState();
}

class _PCSViewState extends State<PCSView> {
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) async {
      BlocProvider.of<CatCubit>(context).getCat();
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: Container(
            padding: EdgeInsets.all((height / 108)),
            child: AppbarIcon(
                icon: Icons.arrow_back,
                onPressed: () {
                  Navigator.of(context).pop();
                })),
        title: Text(
          'Categories',
          style: Style.textStyle23,
        ),
        actions: [
          AppbarIcon(
              icon: Icons.add,
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const CreateCategory(),
                ));
              }),
          SizedBox(width: (width / 82)),
        ],
      ),
      body: SafeArea(
        child: BlocBuilder<CatCubit, CatState>(
          builder: (context, state) {
            if(BlocProvider.of<CatCubit>(context).category == null) {
              return Container(
                alignment: Alignment.center,
                height: height * 0.8,
                child: CircularProgressIndicator(color: Color1.primaryColor,strokeWidth: 1,),
              );
            }
            var category = BlocProvider.of<CatCubit>(context).category['category'];
            return Container(
              padding: EdgeInsets.all((height / 43.37)),
              width: width,
              child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                itemCount: category.length,
                itemBuilder: (context, index) {
                  return PCSWidget(category: category[index],);
                },
              ),
            );
          },
        ),
      ),
    );
  }
}
