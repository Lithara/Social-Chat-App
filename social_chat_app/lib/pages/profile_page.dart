import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:social_chat_app/components/toolbar.dart';
import 'package:social_chat_app/config/app_icons.dart';
import 'package:social_chat_app/config/app_routes.dart';
import 'package:social_chat_app/config/app_strings.dart';
import 'package:social_chat_app/styles/app_text.dart';

enum ProfileMenu { edit, logout }

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ToolBar(
        title: AppStrings.profile,
        actions: [
          PopupMenuButton<ProfileMenu>(onSelected: (value) {
            switch (value) {
              case ProfileMenu.edit:
                Navigator.of(context).pushNamed(AppRoutes.editProfile);
                break;
              case ProfileMenu.logout:
                print('Logout');
                break;
            }
          }, itemBuilder: (context) {
            return [
              PopupMenuItem(
                child: Text(AppStrings.editProfile),
                value: ProfileMenu.edit,
              ),
              PopupMenuItem(
                child: Text('Logout'),
                value: ProfileMenu.logout,
              ),
            ];
          })
        ],
      ),
      body: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(180)),
            child: Image.asset(
              AppIcons.user,
              width: 90,
              height: 90,
              alignment: Alignment.center,
            ),
          ),
          SizedBox(
            height: 24,
          ),
          Text(
            'Lithara Perera',
            style: AppText.header2,
          ),
          SizedBox(
            height: 12,
          ),
          Text(
            'Sri Lanka',
            style: AppText.subtitle3,
          ),
          SizedBox(
            height: 24,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  Text(
                    '1.5K',
                    style: AppText.header2,
                  ),
                  Text(AppStrings.followers),
                ],
              ),
              Column(
                children: [
                  Text(
                    '122',
                    style: AppText.header2,
                  ),
                  Text(AppIcons.post),
                ],
              ),
              Column(
                children: [
                  Text(
                    '375',
                    style: AppText.header2,
                  ),
                  Text(AppStrings.following),
                ],
              ),
            ],
          ),
          Divider(
            thickness: 1,
            height: 24,
          ),
        ],
      ),
    );
  }
}
