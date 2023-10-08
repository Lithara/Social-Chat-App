import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:social_chat_app/pages/home_page.dart';
import 'package:social_chat_app/pages/profile_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: pages[currentndex],
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/svg/homeIcon.svg',
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/svg/favoriteIcon.svg',
              ),
              label: 'Favorite',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/svg/msgIcon.svg',
              ),
              label: 'Message',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/svg/profileIcon.svg',
              ),
              label: 'User',
            ),
          ],
          currentIndex: currentndex,
          onTap: (index) {
            setState(() {
              currentndex = index;
            });
          },
          type: BottomNavigationBarType.fixed,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          backgroundColor: Colors.amber,
        ));
  }

  final pages = [
    HomePage(),
    Center(
      child: Text('Favorite'),
    ),
    Center(
      child: Text('Add Post'),
    ),
    ProfilePage(),
  ];
}
