import 'package:flutter/material.dart';
import 'package:ncc_app/core/style.dart';
import 'package:ncc_app/views/cart_view/cart_view.dart';
import 'package:ncc_app/views/explore_view/explore_view.dart';
import 'package:ncc_app/views/home_view/home_view.dart';
import 'package:ncc_app/views/nav_view/widget/appbar_icon.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

import '../../core/color1.dart';
import '../awidget/main_drawer.dart';

class NavView extends StatefulWidget {
  const NavView({Key? key}) : super(key: key);

  @override
  State<NavView> createState() => _NavViewState();
}

class _NavViewState extends State<NavView> {
  var _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    List bottomView = [
      {
        'body' : const HomeView(),
      },
      {
        'body' : const ExploreView(),
      },
      {
        'appbar' : AppBar(
          centerTitle: true,
          title: Text(
            'My cart',
            style: Style.textStyle23,
          ),
          actions: [
            AppbarIcon(icon: Icons.car_crash_outlined, onPressed: () {}),
            SizedBox(width: (width / 82)),
          ],
        ),
        'body' : const CartView(),
      },
      {
        'body' : const HomeView(),
      },
    ];
    return Scaffold(
      appBar: _currentIndex==2 ? bottomView[_currentIndex]['appbar'] :AppBar(
        leading: Container(
          padding: EdgeInsets.all((height / 108)),
          child: Builder(
            builder: (BuildContext context) {
              return Container(
                decoration: BoxDecoration(
                  color: Colors.black12.withOpacity(0.03),
                  shape: BoxShape.circle,
                ),
                child: IconButton(
                  onPressed: () {
                    Scaffold.of(context).openDrawer();
                  },
                  tooltip:
                      MaterialLocalizations.of(context).openAppDrawerTooltip,
                  icon: Icon(
                    Icons.menu,
                    color: Colors.black,
                    size: (height / 39.42),
                  ),
                ),
              );
            },
          ),
        ),
        centerTitle: true,
        title: Text(
          'Napoli',
          style: Style.textStyle23,
        ),
        actions: [
          AppbarIcon(icon: Icons.search_outlined, onPressed: () {}),
          SizedBox(width: (width / 82)),
          AppbarIcon(icon: Icons.notifications_none_outlined, onPressed: () {}),
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
            icon: const Icon(Icons.shopping_cart_outlined),
            title: const Text("Cart"),
          ),
          // SalomonBottomBarItem(
          //   icon: const Icon(Icons.favorite_border),
          //   title: const Text("Favorite"),
          // ),
          SalomonBottomBarItem(
            icon: const Icon(Icons.person_2_outlined),
            title: const Text("Profile"),
          ),
        ],
      ),
      drawer: _currentIndex==2 ? null : const MainDrawer(),
    );
  }
}
