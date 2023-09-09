import 'package:flutter/material.dart';
import 'package:ncc_app/views/admin/create_section/create_section.dart';

import '../../../core/style.dart';
import '../../nav_view/widget/appbar_icon.dart';
import '../products_admin_view/products_admin_view.dart';

class SectionAdminView extends StatefulWidget {
  const SectionAdminView({Key? key}) : super(key: key);

  @override
  State<SectionAdminView> createState() => _SectionAdminViewState();
}

class _SectionAdminViewState extends State<SectionAdminView> {
  List sec = [
    {
      'image' : 'image/everyday.png',
      'text' : 'Everyday Use Laptop'
    },
    {
      'image' : 'image/bui.png',
      'text' : 'Business Laptop'
    },
    {
      'image' : 'image/asus.png',
      'text' : 'Gaming Laptop'
    },
    {
      'image' : 'image/hua.png',
      'text' : 'Lightweight Laptop'
    },
    {
      'image' : 'image/tou.webp',
      'text' : 'Touch Screen Laptop'
    },
    {
      'image' : 'image/used1.png',
      'text' : 'Used Laptop'
    },
  ];
  int secIndex = 0;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: Container(padding: EdgeInsets.all((height / 108)),child: AppbarIcon(icon: Icons.arrow_back, onPressed: () {Navigator.of(context).pop();})),
        title: Text(
          'Laptop Sections',
          style: Style.textStyle23,
        ),
        actions: [
          AppbarIcon(icon: Icons.add, onPressed: () {Navigator.of(context).push(MaterialPageRoute(builder: (context) => const CreateSection(),));}),
          SizedBox(width: (width / 82)),
        ],
      ),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(height * 0.03),
          height: height,
          child: GridView.builder(
            itemCount: sec.length,
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: height * 0.02,
              mainAxisSpacing: height * 0.02,
            ),
            itemBuilder: (context, index) {
              return InkWell(
                onLongPress: () {
                  print('delete');
                },
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => ProductsAdminView(name: sec[index]['text']),));
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.black12.withOpacity(0.04),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        height: height * .16,
                        child: Image.asset(
                          sec[index]['image'],
                        ),
                      ),
                      Text(
                        sec[index]['text'],
                        style: Style.textStyle17,
                      )
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
