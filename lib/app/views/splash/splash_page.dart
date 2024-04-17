import 'package:flutter/material.dart';
import 'package:gerency_jokes/utils/fonts.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Container(
              color: Colors.white,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/images/splash-logo.png'),
                  Image.asset('assets/images/logo.png'),
                ],
              ),
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 20,
            child: Center(
              child: Text(
                "Developed by gus",
                style: AppTextStyles.titleHome,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
