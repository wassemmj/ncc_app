import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ncc_app/views/admin/awidget/custom_text_from_field.dart';

import '../../../core/color1.dart';
import '../../../logic/discount_cubit/discount_cubit.dart';
import '../change_color_view/widget/change_color_button.dart';

class DiscountButton extends StatelessWidget {
  DiscountButton({Key? key, required this.id}) : super(key: key);

  final int id;

  var p = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      width: (height / 21.68),
      decoration: BoxDecoration(
        color: Colors.black12.withOpacity(0.03),
        shape: BoxShape.circle,
      ),
      child: IconButton(
        onPressed: () async {
          showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                title: Text(
                  'Percentage off',
                  style: TextStyle(
                      color: Color1.primaryColor,
                      fontSize: 20,
                      fontWeight: FontWeight.w400),
                ),
                actions: <Widget>[
                  ChangeColorButton(
                      text: 'Cancel',
                      onPressed: () {
                        Navigator.of(context).pop();
                      }),
                  BlocListener<DiscountCubit, DiscountState>(
                    listener: (context, state) {
                      if (state.status == DiscountStatus.success) {
                        ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(content: Text('Discount done')));
                      }
                    },
                    child: ChangeColorButton(
                        text: 'done',
                        onPressed: () async {
                          await BlocProvider.of<DiscountCubit>(context)
                              .makeDiscountProduct(id, int.parse(p.text));
                        }),
                  ),
                ],
                content: CustomTextFromField(
                  controller: p,
                  hint: 'Percentage off',
                  iconData: Icons.percent_outlined,
                ),
              );
            },
          );
        },
        icon: Icon(
          Icons.percent_outlined,
          color: Colors.red,
          size: (height / 39.42),
        ),
      ),
    );
  }
}
