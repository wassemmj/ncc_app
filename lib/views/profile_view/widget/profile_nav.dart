import 'package:flutter/material.dart';
import 'package:ncc_app/core/style.dart';

class Profile_Nav extends StatelessWidget {
  const Profile_Nav({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          const Divider(
            height: 10,
            color: Color.fromRGBO(0, 0, 0, 0.03),
            thickness: 12,
          ),

          Align(
            alignment: Alignment.topLeft,
            child:  Text(
              'My Orders',
              style: Style.textStyle20.copyWith(fontWeight: FontWeight.w600),
            ),
          ),

          const SizedBox(
            height: 14,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              buildOrderTypes('My Orders', () {}, Icons.contact_page_outlined),
              buildOrderTypes('New Orders', () {}, Icons.new_releases_outlined),
              buildOrderTypes('Last Orders', () {}, Icons.content_paste_go_outlined),
              buildOrderTypes('Ship Orders', () {}, Icons.co_present_outlined),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          const Divider(
            height: 10,
            color: Color.fromRGBO(0, 0, 0, 0.03),
            thickness: 12,
          ),
        ],
      ),
    );
  }

  Widget buildOrderTypes(String name, Function func, IconData icon) {
    return GestureDetector(
      onTap: () {
        func;
      },
      child: Column(
        children: [
          Icon(icon, size: 30.0, color: Colors.black),
          Text(
            name,
            style: Style.textStyle14.copyWith(fontWeight: FontWeight.w500, fontSize: 16),
          ),
        ],
      ),
    );
  }
}
