import 'package:flutter/material.dart';
import 'package:ncc_app/views/admin/change_color_view/widget/change_color_button.dart';

import '../../../core/color1.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';

class ChangeColorView extends StatefulWidget {
  const ChangeColorView({Key? key}) : super(key: key);

  @override
  State<ChangeColorView> createState() => _ChangeColorViewState();
}

class _ChangeColorViewState extends State<ChangeColorView> {

  Color pickerColor = Color1.primaryColor;

  void changeColor(Color color) {
    setState(() => pickerColor = color);
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(
        'Change Color',
        style: TextStyle(
            color: Color1.primaryColor,
            fontSize: 20,
            fontWeight: FontWeight.w400),
      ),
      actions: <Widget>[
        ChangeColorButton(text: 'Cancel', onPressed: () {
          Navigator.of(context).pop();
        }),
        ChangeColorButton(text: 'done', onPressed: () {
          setState(() {
            Color1.primaryColor = pickerColor;
            Navigator.of(context).pop();
          });
        }),
      ],
      content: SingleChildScrollView(
        child: ColorPicker(
          pickerColor: pickerColor,
          paletteType: PaletteType.hueWheel,
          onColorChanged: changeColor,
        ),
      ),
    );
  }
}
