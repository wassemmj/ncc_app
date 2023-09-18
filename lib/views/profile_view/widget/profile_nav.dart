import 'package:flutter/material.dart';
import 'package:ncc_app/core/style.dart';

import '../../../core/color1.dart';
class Profile_Nav extends StatelessWidget {
  const Profile_Nav({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(vertical: 50.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:  [
                CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 66.0,
                  child: Image.asset('image/everyday.png'),
                ),
                SizedBox(height: 16.0),

              ],
            ),
          ),
          ListTile(
            onTap: () {
              // toggleMenu(true);
            },
            leading: const Icon(Icons.account_circle_outlined, size: 25.0, color: Colors.black),
            title: const Text("My Account",style: Style.textStyle18,),
            textColor: Colors.black,
            dense: true,
          ),
          ListTile(
            onTap: () { },
            leading: const Icon(Icons.watch_later_outlined,
                size: 20.0, color: Colors.black),
            title: const Text("Waiting orders",style: Style.textStyle18,),
            textColor: Color1.black,
            dense: true,
            // padding: EdgeInsets.zero,
          ),
          ListTile(
            onTap: () {},
            leading:
            const Icon(Icons.cloud_done_outlined, size: 20.0, color: Colors.black),
            title: const Text("My Last Orders",style: Style.textStyle18,),
            textColor: Colors.black,
            dense: true,

            // padding: EdgeInsets.zero,
          ),ListTile(
            onTap: () {},
            leading:
            const Icon(Icons.logout, size: 20.0, color: Colors.black),
            title: const Text("Log Out",style: Style.textStyle18,),
            textColor: Colors.black,
            dense: true,

            // padding: EdgeInsets.zero,
          ),



        ],
      ),
    );
  }
}

