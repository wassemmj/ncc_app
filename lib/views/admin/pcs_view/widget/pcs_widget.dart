import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:ncc_app/views/admin/section_admin_view/section_admin_view.dart';

import '../../../../core/color1.dart';

class PCSWidget extends StatefulWidget {
  const PCSWidget({Key? key, required this.name}) : super(key: key);

  final String name;

  @override
  State<PCSWidget> createState() => _PCSWidgetState();
}

class _PCSWidgetState extends State<PCSWidget> {
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
            onPressed: (context){},
            backgroundColor: Color1.white,
            foregroundColor: const Color(0xFFFE4A49),
            icon: Icons.delete,
          ),
        ],
      ),
      endActionPane: ActionPane(
        motion: const StretchMotion(),
        key: const ValueKey(0),
        children:  [
          SlidableAction(
            key: const ValueKey(0),
            onPressed: (context){
            },
            backgroundColor: Color1.white,
            foregroundColor: Color1.black,
            icon: Icons.edit,
          ),
        ],
      ),
      child: InkWell(
        onTap: () {Navigator.of(context).push(MaterialPageRoute(builder: (context) => const SectionAdminView(),));},
        child: Container(
          height: height * 0.05,
          width: width,
          margin: EdgeInsets.all(height * 0.022),
          decoration: const BoxDecoration(
              border: Border(
                bottom: BorderSide(color: Colors.black54, width: 0.4),
              )),
          child: SizedBox(
            width: width / 2.2,
            child: Text(
              widget.name,
              style: const TextStyle(
                  letterSpacing: 0,
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                  fontSize: 17),
              maxLines: 2,
            ),
          ),
        ),
      ),
    );
  }
}