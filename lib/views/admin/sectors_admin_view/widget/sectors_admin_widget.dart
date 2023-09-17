import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/style.dart';
import '../../../../logic/delete_cubit/delete_cubit.dart';
import '../../products_admin_view/products_admin_view.dart';

class SectorsAdminWidget extends StatelessWidget {
  const SectorsAdminWidget({Key? key, required this.sectors}) : super(key: key);

  final List sectors;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      padding: EdgeInsets.all(height * 0.03),
      height: height,
      child: GridView.builder(
        itemCount: sectors.length,
        physics: const RangeMaintainingScrollPhysics(),
        shrinkWrap: true,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: height * 0.02,
          mainAxisSpacing: height * 0.02,
        ),
        itemBuilder: (context, index) {
          return BlocListener<DeleteCubit, DeleteState>(
            listener: (context, state) {},
            child: InkWell(
              onLongPress: () async {
                await BlocProvider.of<DeleteCubit>(context)
                    .deleteSector(sectors[index]['id']);
              },
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => ProductsAdminView(
                      name: sectors[index]['name'], sectorID: sectors[index]['id'],),
                ));
              },
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.black12.withOpacity(0.04),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Container(
                  alignment: Alignment.center,
                  child: Text(
                    sectors[index]['name'],
                    textAlign: TextAlign.center,
                    maxLines: 2,
                    style: Style.textStyle17,
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
