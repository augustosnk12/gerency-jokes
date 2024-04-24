import 'package:flutter/material.dart';
import 'package:gerency_jokes/utils/colors.dart';
import 'package:get/get.dart';

import 'package:gerency_jokes/app/routes/app_pages.dart';
import 'package:gerency_jokes/app/routes/app_routes.dart';

void main() {
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: Routes.bottomNavigation,
    theme: ThemeData(
      primaryColor: Color.fromARGB(255, 159, 0, 199), 
      //set some background
      scaffoldBackgroundColor: AppColors.backgroundColor,
    ),
    defaultTransition: Transition.fade,
    // initialBinding: HomeBinding(),
    getPages: AppPages.pages,
    // home: LoginPage(),
  ));
}
