import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:social_chat_app/styles/app_text.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image.asset(
            'assets/temp/Image.png',
            width: 90,
            height: 90,
            alignment: Alignment.center,
          ),
          Text(
            'Lithara Perera',
            style: AppText.header2,
          ),
          Text(
            'Sri Lanka',
            style: AppText.subtitle3,
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
                  Text('Followers'),
                ],
              ),
              Column(
                children: [
                  Text(
                    '122',
                    style: AppText.header2,
                  ),
                  Text('Posts'),
                ],
              ),
              Column(
                children: [
                  Text(
                    '375',
                    style: AppText.header2,
                  ),
                  Text('Following'),
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