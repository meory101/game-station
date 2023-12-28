import 'package:flutter/material.dart';
import 'package:gamestation/theme/colors.dart';

TextStyle sub_W_font = TextStyle(
  fontSize: 16,
  color: Colors.white,
  fontWeight: FontWeight.w600,
);
TextStyle sub_W_font_sh = TextStyle(
    fontSize: 16,
    color: Colors.white,
    fontWeight: FontWeight.w600,
    shadows: [
      BoxShadow(
        color: maincolor,
        spreadRadius: 50,
        blurRadius: 10,
      ),
    ]);

TextStyle small_W_font = TextStyle(
  fontSize: 14,
  color: Colors.white,
  fontWeight: FontWeight.w400,
);
TextStyle small_G_font = TextStyle(
  fontSize: 12,
  color: Color.fromARGB(255, 210, 210, 210),
  fontWeight: FontWeight.w400,
  shadows: [
    BoxShadow(
      color: maincolor,
      spreadRadius: 10,
      blurRadius: 10,
    ),
  ],
);
