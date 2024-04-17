import 'package:get/get.dart';

import 'package:gerency_jokes/app/routes/app_routes.dart';
import 'package:gerency_jokes/app/views/splash/splash_page.dart';

abstract class AppPages {
  static final pages = [
    // GetPage(
    //   name: Routes.home,
    //   page: () => BottomBarPage(),
    //   binding: HomeBinding()
    // ),
    GetPage(name: Routes.splash, page: () => SplashPage())
  ];
}
