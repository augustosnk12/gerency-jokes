// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gerency_jokes/app/views/login/login_button_widget.dart';
import 'package:gerency_jokes/utils/colors.dart';
import 'package:gerency_jokes/utils/fonts.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding:
              const EdgeInsets.only(top: 30, left: 20, right: 20, bottom: 30),
          child: Stack(
            children: [
              Column(
                children: [
                  RichText(
                    text: TextSpan(
                      text: 'Bem vindo',
                      style: GoogleFonts.gochiHand(
                          fontSize: 50, color: AppColors.blackColor),
                      children: [
                        TextSpan(
                          text: '\nFaça login para criar as melhores piadas',
                          style: GoogleFonts.gochiHand(
                              fontSize: 20, color: AppColors.grayHomeColor),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 50),
                  Image.asset('assets/images/splash-logo.png', height: 150),
                  SizedBox(height: 50),
                  LoginButton(
                    backgroundColor: Colors.white,
                    label: 'Login com Google',
                    textColor: AppColors.purpleButtonColor,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30, bottom: 30),
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          child: Divider(
                            color: AppColors.grayHomeColor,
                            height: 36,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 40),
                          child: Text(
                            'ou',
                            style: AppTextStyles.titleHome,
                          ),
                        ),
                        Expanded(
                          child: Divider(
                            color: AppColors.grayHomeColor,
                            height: 36,
                          ),
                        ),
                      ],
                    ),
                  ),
                  LoginButton(
                    backgroundColor: AppColors.purpleButtonColor,
                    label: 'Entrar como convidado',
                    textColor: Colors.white,
                  ),
                ],
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
        ),
      ),
    );
  }
}
