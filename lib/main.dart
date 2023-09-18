import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ncc_app/logic/account_cubit/account_cubit.dart';
import 'package:ncc_app/logic/auth_cubit/auth_cubit.dart';
import 'package:ncc_app/logic/cat_cubit/cat_cubit.dart';
import 'package:ncc_app/logic/create_cubit/create_cubit.dart';
import 'package:ncc_app/logic/delete_cubit/delete_cubit.dart';
import 'package:ncc_app/logic/discount_cubit/discount_cubit.dart';
import 'package:ncc_app/logic/fav_cubit/fav_cubit.dart';
import 'package:ncc_app/logic/home_cubit/home_cubit.dart';
import 'package:ncc_app/logic/user_cubit/user_cubit.dart';
import 'package:ncc_app/views/auth_view/login_view.dart';
import 'package:ncc_app/views/details_view/details_view.dart';

import 'core/color1.dart';

void main() {
  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => AuthCubit(),
        ),
        BlocProvider(
          create: (context) => CatCubit(),
        ),
        BlocProvider(
          create: (context) => CreateCubit(),
        ),
        BlocProvider(
          create: (context) => DeleteCubit(),
        ),
        BlocProvider(
          create: (context) => UserCubit(),
        ),
        BlocProvider(
          create: (context) => DiscountCubit(),
        ),
        BlocProvider(
          create: (context) => FavCubit(),
        ),
        BlocProvider(
          create: (context) => HomeCubit(),
        ),
        BlocProvider(
          create: (context) => AccountCubit(),
        ),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
          // hoverColor: Colors.transparent,
          appBarTheme: const AppBarTheme(
            color: Color1.white,
            elevation: 0,
          ),
          colorScheme: ColorScheme.fromSwatch().copyWith(
            primary: Color1.primaryColor, // Your accent color
          ),
          scaffoldBackgroundColor: Color1.white,
        ),
        home: const LoginView());
  }
}
