import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:social_chat_app/components/post_item.dart';
import 'package:social_chat_app/components/toolbar.dart';
import 'package:social_chat_app/config/app_icons.dart';
import 'package:social_chat_app/config/app_strings.dart';
import 'package:social_chat_app/styles/app_colors.dart';
import 'package:social_chat_app/styles/app_text.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  List<String> users = [];

  @override
  Widget build(BuildContext context) {
    mockUsersFromServer();
    return Scaffold(
      appBar: ToolBar(
        title: AppStrings.appName,
        actions: [
          IconButton(
            onPressed: (){},
            icon: SvgPicture.asset(AppIcons.location),
          ),  
        ],
      ), // 64
      body: ListView.separated(
        itemBuilder: (context, index) {
          return Postitem(
            user: users[index],
          );
        },
        itemCount: users.length,
        separatorBuilder: (BuildContext context, int index) {
          return SizedBox(
            height: 24,
          );
        },
      ),
    );
  }

  mockUsersFromServer() {
    for (var i = 0; i < 100; i++) {
      users.add('User number $i');
    }
  }
}
