import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/api.dart';
import '../../../../core/style.dart';
import '../../../../logic/delete_cubit/delete_cubit.dart';
import '../../sectors_admin_view/sectors_admin_view.dart';

class SectionAdminWidget extends StatelessWidget {
  const SectionAdminWidget({Key? key, required this.id, required this.name, required this.image}) : super(key: key);

  final int id;
  final String name;
  final String? image;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return BlocListener<DeleteCubit, DeleteState>(
      listener: (context, state) {
      },
      child: InkWell(
        onLongPress: () async {
          await BlocProvider.of<DeleteCubit>(context)
              .deleteSec(id);
        },
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => SectorsAdminView(
              secId: id,
              name: name,
            ),
          ));
        },
        child: Container(
          decoration: BoxDecoration(
            color: Colors.black12.withOpacity(0.04),
            borderRadius: BorderRadius.circular(15),
          ),
          child: image != null
              ? Column(
            children: [
              SizedBox(
                height: height * .16,
                child: Image.network(
                  '${Api.apiImage}/section/${image}',
                ),
              ),
              SizedBox(
                height: height * 0.01,
              ),
              Text(
                name,
                textAlign: TextAlign.center,
                maxLines: 2,
                style: Style.textStyle17,
              )
            ],
          )
              : Container(
            alignment: Alignment.center,
            child: Text(
              name,
              textAlign: TextAlign.center,
              maxLines: 2,
              style: Style.textStyle17,
            ),
          ),
        ),
      ),
    );
  }
}
