import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:gerency_jokes/app/routes/app_pages.dart';
import 'package:gerency_jokes/app/routes/app_routes.dart';

void main() {
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: Routes.splash,
    theme: ThemeData(
      primaryColor: Color.fromARGB(255, 159, 0, 199),
    ),
    defaultTransition: Transition.fade,
    // initialBinding: HomeBinding(),
    getPages: AppPages.pages,
    // home: LoginPage(),
  ));
}
