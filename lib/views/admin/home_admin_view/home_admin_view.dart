import 'package:flutter/material.dart';
import 'package:ncc_app/views/admin/pcs_view/pcs_view.dart';

import '../../../core/color1.dart';
import '../user_view/user_view.dart';

class HomeAdminView extends StatefulWidget {
  const HomeAdminView({Key? key}) : super(key: key);

  @override
  State<HomeAdminView> createState() => _HomeAdminViewState();
}

class _HomeAdminViewState extends State<HomeAdminView> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      padding: EdgeInsets.all((height / 43.37)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const CircleAvatar(
            backgroundColor: Colors.black,
            radius: 100,
          ),
          SizedBox(height: height * 0.04),
          Container(
            alignment: Alignment.center,
            child: const Text(
              'Napoli Trading Company',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
                color: Color1.black,
              ),
            ),
          ),
          Container(
            alignment: Alignment.center,
            child: const Text(
              'Welcome to admin section',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: Colors.black54,
              ),
            ),
          ),
          SizedBox(height: height * 0.2),

        ],
      ),
    );
  }
}
