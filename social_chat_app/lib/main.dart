import 'package:flutter/material.dart';
import 'package:social_chat_app/config/app_routes.dart';
import 'package:social_chat_app/pages/edit_profile_page.dart';
import 'package:social_chat_app/pages/login_page.dart';
import 'package:social_chat_app/pages/main_page.dart';
import 'package:social_chat_app/pages/test_page.dart';
import 'package:social_chat_app/styles/app_colors.dart';

import 'pages/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'Urbanist',
        scaffoldBackgroundColor: AppColors.background,
        brightness: Brightness.dark,
      ),
      debugShowCheckedModeBanner: false, // remove debug banner
      home: LoginPage(),
      // initialRoute: AppRoutes.login,
      routes: AppRoutes.pages,
    );
  }
}
