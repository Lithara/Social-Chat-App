import 'package:flutter/material.dart';
import 'package:social_chat_app/styles/app_colors.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: AppColors.background,
          elevation: 0,
          title: const Text('5 minute flutter'),
          actions: const [
            Icon(Icons.location_on_outlined),
          ],
        ),
        body: ListView(
          children: mockUsersFromServer(),
        ),
    );
  }

  Widget _useritem() {
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
        const Text(
          'Sarah Fernandez',
        )
      ],
    );
  }

  List<Widget> mockUsersFromServer() {
    List<Widget> users = [];
    for (var i = 0; i < 1000; i++) {
      users.add(_useritem());
    }
    return users;
  }
}
