import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginButton extends StatelessWidget {
  final String label;
  final Color backgroundColor;
  final Color textColor;

  const LoginButton(
      {super.key,
      required this.label,
      required this.backgroundColor,
      required this.textColor});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        backgroundColor: backgroundColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      child: Container(
        width: double.infinity,
        height: 60,
        child: Align(
          alignment: Alignment.center,
          child: Text(label,
              style: GoogleFonts.inter(
                  fontSize: 20, fontWeight: FontWeight.w600, color: textColor)),
        ),
      ),
    );
  }
}
