import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:ncc_app/views/admin/user_view/widget/user_widget.dart';

import '../../../core/color1.dart';
import '../../../core/style.dart';
import '../../nav_view/widget/appbar_icon.dart';

class UserView extends StatefulWidget {
  const UserView({Key? key}) : super(key: key);

  @override
  State<UserView> createState() => _UserViewState();
}

class _UserViewState extends State<UserView> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: Container(padding: EdgeInsets.all((height / 108)),child: AppbarIcon(icon: Icons.arrow_back, onPressed: () {Navigator.of(context).pop();})),
        title: Text(
          'All User',
          style: Style.textStyle23,
        ),
      ),
      body: SafeArea(
        child: ListView.builder(
          physics: const BouncingScrollPhysics(),
          itemCount: 3,
          itemBuilder: (context, index) {
            return const UserWidget();
          },
        ),
      ),
    );
  }
}
