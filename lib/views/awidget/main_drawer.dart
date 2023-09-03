import 'package:flutter/material.dart';
import 'package:ncc_app/views/auth_view/login_view.dart';

import '../../core/color1.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({Key? key}) : super(key: key);

  Widget buildListTile(String title, IconData icon, Function() function,
      BuildContext ctx) {
    return ListTile(
      leading: Icon(
        icon,
        size: 22,
        color:  Color1.black,
      ),
      title: Text(
        title,
        style: const TextStyle(
            fontSize: 20,
            color: Color1.black,
            fontWeight: FontWeight.w400,
        ),
      ),
      onTap: function,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: Column(
          children: [
            Container(
              alignment: Alignment.center,
              height: 120,
              width: double.infinity,
              padding: const EdgeInsets.all(20),
              color: Theme
                  .of(context)
                  .colorScheme.primary,
              child: const Text(
              'Napoli Trading Company',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w900,
                  color: Color1.white,
                ),
              ),
            ),
            buildListTile(
              'Favorites',
              Icons.favorite_border,
                  () {},
              context,
            ),
            buildListTile(
              'Settings',
              Icons.settings,
                  () {

                  },
              context,
            ),
            buildListTile(
              'Log out',
              Icons.logout_outlined,
                  () => Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => const LoginView(),)),
              context,
            ),
          ],
        ),
      ),
    );
  }
}
