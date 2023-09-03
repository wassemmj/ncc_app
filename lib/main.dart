import 'package:flutter/material.dart';
import 'package:ncc_app/views/auth_view/login_view.dart';
import 'package:ncc_app/views/nav_view/nav_view.dart';

import 'core/color1.dart';

void main() {
  runApp(const MyApp());
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
      home: const LoginView()
    );
  }
}