import 'package:social_chat_app/pages/edit_profile_page.dart';
import 'package:social_chat_app/pages/home_page.dart';
import 'package:social_chat_app/pages/main_page.dart';

class AppRoutes {
  
  static final pages = {
    // '/': (context) => LoginPage(),
    '/home': (context) => HomePage(),
    '/main': (context) => MainPage(),
    '/edit_profile': (context) => EditProfilePage(),
  };

  // static const login = '/login';
  static const home = '/home';
  static const main = '/main';
  static const editProfile = '/edit_profile';
}
