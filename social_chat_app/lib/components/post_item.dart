// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:social_chat_app/config/app_icons.dart';
import 'package:social_chat_app/styles/app_text.dart';

class Postitem extends StatelessWidget {
  final String user;
  const Postitem({
    Key? key,
    required this.user,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          Row(
            children: [
              Image.asset(
                AppIcons.user,
                width: 40,
                height: 40,
              ),
              const SizedBox(
                width: 16,
              ),
              Text(
                user,
                style: AppText.subtitle3,
              )
            ],
          ),
          SizedBox(
            height: 12,
          ),
          Image.asset(AppIcons.post),
          SizedBox(
            height: 12,
          ),
          Text(
            'The sun is a daily reminder that we too can rise from the darkness, that we too can shine our own light 🌞💖',
            style: AppText.subtitle3,
          ),
        ],
      ),
    );
  }
}
