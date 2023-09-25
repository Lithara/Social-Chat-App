import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Bottom Navigation Container'
        ),
      ),
      body: const Center(
        child: Text(
          'Center Text'
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.favorite,
            ),
            label: 'Favorite',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.add,
            ),
            label: 'Add Post',
          ),
        ],
        onTap: (index){
          
        },
        showSelectedLabels: false,
        showUnselectedLabels: false,
        backgroundColor: Colors.amber,
      )
    );
  }
}