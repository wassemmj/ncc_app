import 'package:flutter/material.dart';

import '../../../core/style.dart';
import '../../nav_view/widget/appbar_icon.dart';

class AddMoreDetailsView extends StatefulWidget {
  const AddMoreDetailsView({Key? key}) : super(key: key);

  @override
  State<AddMoreDetailsView> createState() => _AddMoreDetailsViewState();
}

class _AddMoreDetailsViewState extends State<AddMoreDetailsView> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        leading: Container(
            padding: EdgeInsets.all((height / 108)),
            child: AppbarIcon(
              icon: Icons.arrow_back,
              onPressed: () {
                Navigator.of(context).pop();
              }, color: Colors.black54.withOpacity(0.03),)),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const RangeMaintainingScrollPhysics(),
          child: Container(
            padding: EdgeInsets.all(height * 0.02),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Create More Details',
                  style: Style.textStyle23,
                ),
                SizedBox(height: height * 0.04),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
