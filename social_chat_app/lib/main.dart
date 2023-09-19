import 'package:flutter/material.dart';
import 'package:social_chat_app/pages/login_page.dart';
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
      ),
      debugShowCheckedModeBanner: false, // remove debug banner
      home: LoginPage(),
      initialRoute: '/',
      routes: {
        '/home': (context) => HomePage(),
      },
    );
  }
}
