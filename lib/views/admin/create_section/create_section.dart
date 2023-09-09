import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:ncc_app/views/admin/awidget/custom_text_from_field.dart';
import 'package:ncc_app/views/admin/create_section/widget/create_section_button.dart';

import '../../../core/color1.dart';
import '../../../core/style.dart';
import '../../nav_view/widget/appbar_icon.dart';

class CreateSection extends StatefulWidget {
  const CreateSection({Key? key}) : super(key: key);

  @override
  State<CreateSection> createState() => _CreateSectionState();
}

class _CreateSectionState extends State<CreateSection> {

  var secName = TextEditingController();
  File? pickedImage;

  List<String> items = [
    'Select Type',
    'Laptop',
    'Desktop',
    'Monitor',
    'Gaming',
    'Storage',
    'Hardware',
    'Audio',
    'Printer',
    'Scanner',
    'Accessories',
    'Software',
    'Tvs'
  ];

  String? value = 'Select Type';

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        leading: Container(padding: EdgeInsets.all((height / 108)),child: AppbarIcon(icon: Icons.arrow_back, onPressed: () {Navigator.of(context).pop();})),
      ),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(height * 0.02),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: height * 0.15),
              Text(
                'Create Section',
                style: Style.textStyle23,
              ),
              SizedBox(height: height * 0.05),
              pickedImage!=null ? Center(
                child: ClipOval(
                  child: SizedBox.fromSize(
                    size: const Size.fromRadius(80),
                    child:  Image.file(
                      pickedImage!,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ) : Container(),
              Center(
                child: ElevatedButton(
                    onPressed: () async {
                      final ImagePicker picker = ImagePicker();
                      final XFile? image = await picker.pickImage(
                        source: ImageSource.camera,
                      );
                      if (image == null) {
                        return;
                      }
                      setState(() {
                        pickedImage = File(image.path);
                      });
                    },
                    style: ButtonStyle(
                        padding: MaterialStateProperty.all(const EdgeInsets.all(8)),
                        elevation: MaterialStateProperty.all(10),
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5)))),
                    child: const Text(
                      'Choose photo',
                      style: TextStyle(
                          fontSize: 15, fontWeight: FontWeight.w400),
                    )),
              ),
              SizedBox(height: height * 0.02),
              CustomTextFromField(controller: secName, hint: 'Section Name', iconData: Icons.category_outlined),
              SizedBox(height: height * 0.02),
              Row(
                children: [
                  const Text(
                    'Category name : ',
                    style: TextStyle(
                      fontSize: 17,
                      color: Color1.black,
                      fontWeight: FontWeight.w500
                    ),
                  ),
                  SizedBox(width: width * 0.03),
                  DropdownButton(
                    items: items.map((String items) {
                      return DropdownMenuItem(
                        value: items,
                        child: Text(items),
                      );
                    }).toList(),
                    icon: const Icon(Icons.keyboard_arrow_down),
                    value: value,
                    onChanged: (val) {
                      setState(() {
                        value = val;
                      });
                    },
                    iconEnabledColor: Color1.primaryColor,
                  ),
                ],
              ),
              SizedBox(height: height * 0.02),
              const CreateSectionButton()
            ],
          ),
        ),
      ),
    );
  }
}
