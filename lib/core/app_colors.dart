import 'package:flutter/material.dart';

class AppColors {
  static Color get bgBlue => const Color(0XFF2D74FF);
  static Color get lightBlue => const Color(0XFF7294EB);
  static Color get black => Colors.black;
  static Color get white => Colors.white;
  static LinearGradient get btnGradient => LinearGradient(colors: [
        Color(0XFF033D8C),
        Color(0XFF0598D1),
      ]);
  static Color get btnShadowColor =>
      const Color(0XFF7E72F294).withOpacity(0.58);
}
