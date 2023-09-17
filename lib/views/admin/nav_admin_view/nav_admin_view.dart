import 'package:flutter/material.dart';
import 'package:ncc_app/views/admin/home_admin_view/home_admin_view.dart';
import 'package:ncc_app/views/admin/order_admin_view/order_admin_view.dart';
import 'package:ncc_app/views/admin/settings_admin/settings_admin.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

import '../../../core/color1.dart';
import '../../../core/style.dart';
import '../../explore_view/explore_view.dart';
import '../../nav_view/widget/appbar_icon.dart';

class NavAdminView extends StatefulWidget {
  const NavAdminView({Key? key}) : super(key: key);

  @override
  State<NavAdminView> createState() => _NavAdminViewState();
}

class _NavAdminViewState extends State<NavAdminView> {
  var _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    List bottomView = [
      {
        'body': const HomeAdminView(),
      },
      {
        'body': const ExploreView(),
      },
      {
        'body': const OrderAdminView(),
      },
      {
        'body': const SettingsAdmin(),
      },
    ];
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Napoli',
          style: Style.textStyle23,
        ),
        actions: [
          AppbarIcon(icon: Icons.search_outlined, onPressed: () {}),
          SizedBox(width: (width / 82)),
          AppbarIcon(
              icon: Icons.notifications_none_outlined,
              onPressed: () {}),
          SizedBox(width: (width / 41)),
        ],
      ),
      body: bottomView[_currentIndex]['body'],
      bottomNavigationBar: SalomonBottomBar(
        currentIndex: _currentIndex,
        onTap: (i) {
          setState(() => _currentIndex = i);
        },
        itemPadding: EdgeInsets.all((height / 57.82)),
        selectedItemColor: Color1.black,
        unselectedItemColor: Colors.black54,
        items: [
          SalomonBottomBarItem(
            icon: const Icon(Icons.home_outlined),
            title: const Text("Home"),
          ),
          SalomonBottomBarItem(
            icon: const Icon(Icons.category_outlined),
            title: const Text('Explore'),
          ),
          SalomonBottomBarItem(
            icon: const Icon(Icons.shopping_basket_outlined),
            title: const Text("Order"),
          ),
          SalomonBottomBarItem(
            icon: const Icon(Icons.settings),
            title: const Text("Settings"),
          ),
        ],
      ),
    );
  }
}
