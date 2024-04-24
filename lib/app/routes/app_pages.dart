import 'package:gerency_jokes/app/views/bottom_navigation/bottom_navigation_page.dart';
import 'package:gerency_jokes/app/views/login/login_page.dart';
import 'package:get/get.dart';

import 'package:gerency_jokes/app/routes/app_routes.dart';
import 'package:gerency_jokes/app/views/splash/splash_page.dart';

abstract class AppPages {
  static final pages = [
    GetPage(
      name: Routes.bottomNavigation,
      page: () => BottomNavigationPage(),
    ),
    GetPage(name: Routes.splash, page: () => SplashPage()),
    GetPage(name: Routes.login, page: () => LoginPage()),
  ];
}
