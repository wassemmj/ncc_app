import 'package:flutter/material.dart';
import 'package:ncc_app/views/admin/adverts_admin/widget/advert_admin_widget.dart';
import 'package:ncc_app/views/admin/create_advert/create_advert.dart';

import '../../../core/style.dart';
import '../../nav_view/widget/appbar_icon.dart';

class AdvertsAdmin extends StatefulWidget {
  const AdvertsAdmin({Key? key}) : super(key: key);

  @override
  State<AdvertsAdmin> createState() => _AdvertsAdminState();
}

class _AdvertsAdminState extends State<AdvertsAdmin> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: Container(padding: EdgeInsets.all((height / 108)),child: AppbarIcon(icon: Icons.arrow_back, onPressed: () {Navigator.of(context).pop();})),
        title: Text(
          'Adverts',
          style: Style.textStyle23,
        ),
        actions: [
          AppbarIcon(icon: Icons.add, onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (context) => const CreateAdvert(),));
          }),
          SizedBox(width: (width / 82)),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all((height * .03)),
        child: ListView.builder(
          itemCount: 4,
          physics: const RangeMaintainingScrollPhysics(),
          itemBuilder: (context, index) {
            return const AdvertAdminWidget();
          },
        ),
      ),
    );
  }
}
