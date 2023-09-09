import 'package:flutter/material.dart';

import '../../../core/color1.dart';

class CustomTextFromField extends StatelessWidget {
  const CustomTextFromField({Key? key, required this.controller, required this.hint, required this.iconData}) : super(key: key);

  final TextEditingController controller;
  final String hint;
  final IconData iconData;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: Color1.primaryColor,
      decoration: InputDecoration(
        labelText: hint,
        floatingLabelStyle: const TextStyle(
            color: Colors.black54,
            fontWeight: FontWeight.w400,
            fontSize: 22),
        focusColor: Color1.primaryColor,
        labelStyle: const TextStyle(
            fontSize: 16, fontWeight: FontWeight.w400),
        iconColor: Color1.primaryColor,
        prefixIcon: Icon(
          iconData
          // color: Color1.black,
        ),
      ),
      controller: controller,
    );
  }
}
