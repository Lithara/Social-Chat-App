import 'package:flutter/material.dart';
import 'package:social_chat_app/styles/app_text.dart';

class Postitem extends StatelessWidget {
  const Postitem({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          'assets/temp/Image.png',
          width: 40,
          height: 40,
        ),
        const SizedBox(
          width: 16,
        ),
        Text(
          'Sarah Fernandez',
          style: AppText.subtitle3,
        )
      ],
    );
  }
}