import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

import '../../../../core/color1.dart';
import '../../../../core/style.dart';

class UserWidget extends StatefulWidget {
  const UserWidget({Key? key}) : super(key: key);

  @override
  State<UserWidget> createState() => _UserWidgetState();
}

class _UserWidgetState extends State<UserWidget> {

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Slidable(
      startActionPane: ActionPane(
        motion: const StretchMotion(),
        key: const ValueKey(0),
        children:  [
          SlidableAction(
            key: const ValueKey(0),
            onPressed: (context){
            },
            backgroundColor: Color1.white,
            foregroundColor: const Color(0xFFFE4A49),
            icon: Icons.delete,
          ),
        ],
      ),
      child: Container(
        height: height * 0.12,
        margin: EdgeInsets.all(height * 0.022),
        decoration: const BoxDecoration(
            border: Border(
              bottom: BorderSide(color: Colors.black54, width: 0.2),
            )),
        child: Row(
          children: [
            Container(
              width: width * 0.3,
              height: height * 0.10,
              decoration: BoxDecoration(
                  color: Colors.black12.withOpacity(0.04),
                  borderRadius: BorderRadius.circular(25),
                  image: const DecorationImage(
                      image: AssetImage(
                        'image/user.png',
                      ),
                      fit: BoxFit.fitHeight)),
            ),
            const SizedBox(
              width: 15,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(
                  width: width / 2.2,
                  child: const Text(
                    'userxraw@gmail.com',
                    style: TextStyle(
                        letterSpacing: 0,
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontSize: 17),
                    maxLines: 2,
                  ),
                ),
                const Text(
                  'user raw1',
                  style: Style.textStyle14,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
