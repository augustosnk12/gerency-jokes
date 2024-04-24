import 'package:flutter/material.dart';
import 'package:gerency_jokes/app/controllers/home_controller.dart';
import 'package:gerency_jokes/utils/colors.dart';
import 'package:get/get.dart';

// ignore: must_be_immutable
class BottomNavigationPage extends GetView<HomeController> {
  List<Widget> pages = <Widget>[
    const Text('Home'),
    const Text('Favoritos'),
    const Text('Configurações')
  ];

  BottomNavigationPage({super.key});

  final homeController = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetX<HomeController>(
          init: HomeController(),
          builder: (controller) {
            return Scaffold(
              body: pages.elementAt(controller.selectedPageIndex.value),
              bottomNavigationBar: BottomNavigationBar(
                items: const <BottomNavigationBarItem>[
                  BottomNavigationBarItem(
                    icon: Icon(Icons.home),
                    label: 'Home',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.add_circle_sharp, size: 40,),
                    label: 'Nova piada',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.emoji_symbols),
                    label: 'Categorias',
                  ),
                ],
                currentIndex: homeController.selectedPageIndex.value,
                selectedItemColor: AppColors.purpleButtonColor,
                onTap: homeController.changePageIndex,
              ),
            );
          }),
    );
  }
}
