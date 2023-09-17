import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../logic/fav_cubit/fav_cubit.dart';

class FavButton extends StatefulWidget {
  const FavButton({Key? key, required this.id,})
      : super(key: key);

  final int id;

  @override
  State<FavButton> createState() => _FavButtonState();
}

class _FavButtonState extends State<FavButton> {

  bool fav = false;

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) async {
      await BlocProvider.of<FavCubit>(context,listen: false).getFav();
    });
    super.initState();
    getd();
  }

  getd() async {
    fav = BlocProvider.of<FavCubit>(context).fav['message'].any((product) {
      print(product['id']);
      return widget.id == product['id'];
    });
  }

  @override
  void didChangeDependencies() async {
    super.didChangeDependencies();
    await BlocProvider.of<FavCubit>(context).getFav();
    if (fav) {
      fav = true;
    } else {
      fav = false;
    }
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return BlocBuilder<FavCubit, FavState>(
      builder: (context, state) {
        return Container(
          width: (height / 21.68),
          decoration: BoxDecoration(
            color: Colors.black12.withOpacity(0.03),
            shape: BoxShape.circle,
          ),
          child: IconButton(
            onPressed: () async {
              if (!fav) {
                await BlocProvider.of<
                    FavCubit>(context)
                    .makeFav(widget.id);
              } else {
                print('removed');
              }
              getd();
            },
            icon: Icon(
              fav ? Icons.favorite : Icons.favorite_border,
              color:fav ? Colors.red : Colors.black,
              size: (height / 39.42),
            ),
          ),
        );
      },
    );
  }
}
