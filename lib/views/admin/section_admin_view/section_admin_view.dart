import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ncc_app/views/admin/create_section/create_section.dart';
import 'package:ncc_app/views/admin/products_admin_view/widget/product_admin_out.dart';
import 'package:ncc_app/views/admin/section_admin_view/widget/section_admin_widget.dart';

import '../../../core/color1.dart';
import '../../../core/style.dart';
import '../../../logic/cat_cubit/cat_cubit.dart';
import '../../nav_view/widget/appbar_icon.dart';

class SectionAdminView extends StatefulWidget {
  const SectionAdminView({Key? key, required this.catId, required this.catName}) : super(key: key);

  final int catId;
  final String catName;

  @override
  State<SectionAdminView> createState() => _SectionAdminViewState();
}

class _SectionAdminViewState extends State<SectionAdminView> {
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) async {
      BlocProvider.of<CatCubit>(context).getSec(widget.catId);
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
        leading: Container(
            padding: EdgeInsets.all((height / 108)),
            child: AppbarIcon(
                icon: Icons.arrow_back,
                onPressed: () {
                  Navigator.of(context).pop();
                })),
        title: Text(
          widget.catName,
          style: Style.textStyle23,
        ),
        actions: [
          AppbarIcon(
              icon: Icons.add,
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const CreateSection(),
                ));
              }),
          SizedBox(width: (width / 82)),
        ],
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
            if (BlocProvider.of<CatCubit>(context).section == null) {
              return Container(
                alignment: Alignment.center,
                height: height,
                child: CircularProgressIndicator(
                  color: Color1.primaryColor,
                  strokeWidth: 1,
                ),
              );
            }
            Map sectionM = BlocProvider.of<CatCubit>(context).section;
            var section;
            if( section != 'result not found' && sectionM.containsKey('section')) {
              section = BlocProvider.of<CatCubit>(context).section['section'];
              return Container(
                padding: EdgeInsets.all(height * 0.03),
                height: height,
                child: GridView.builder(
                  itemCount: section.length,
                  physics: const RangeMaintainingScrollPhysics(),
                  shrinkWrap: true,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: height * 0.02,
                    mainAxisSpacing: height * 0.02,
                  ),
                  itemBuilder: (context, index) {
                    return SectionAdminWidget(id: section[index]['id'], name: section[index]['Section_type'], image: section[index]['Section_image'],);
                  },
                ),
              );
            }
            var pageUrl = sectionM['products']['links'];
            return section != 'result not found' ? ProductsAdminOut(pageIndex: pageIndex, product: sectionM, onPressed: (index) async {
              setState(() {
                pageIndex = index;
              });
              await BlocProvider.of<CatCubit>(context)
                  .api(pageUrl[index + 1]['url']);
            },): Container();
          },
        ),
      ),
    );
  }
}
