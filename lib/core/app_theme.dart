import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'app_colors.dart';

class AppTheme {
  static ThemeData appLightTheme = ThemeData(
      fontFamily: 'Montserrat',
      colorScheme: ColorScheme.fromSeed(
          seedColor: AppColors.lightBlue, brightness: Brightness.light),
      useMaterial3: true,
      scaffoldBackgroundColor: AppColors.bg,
      iconTheme: IconThemeData(color: AppColors.black),
      bottomNavigationBarTheme:
          BottomNavigationBarThemeData(backgroundColor: AppColors.white),
      appBarTheme: appBarTheme(),
      textTheme: textTheme(),
      inputDecorationTheme: InputDecorationTheme(
          hintStyle: TextStyle(color: Colors.grey),
          fillColor: AppColors.white,
          border: UnderlineInputBorder()));
  static ThemeData darkTheme = ThemeData(
      // brightness: Brightness.dark,
      fontFamily: 'Montserrat',
      colorScheme: ColorScheme.fromSeed(seedColor: AppColors.lightBlue),
      useMaterial3: true,
      scaffoldBackgroundColor: AppColors.black,
      iconTheme: const IconThemeData(color: Colors.white),
      appBarTheme: AppBarTheme(
          backgroundColor: AppColors.black,
          centerTitle: true,
          titleTextStyle: TextStyle(
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.w700,
              fontSize: 16.sp)),
      bottomNavigationBarTheme:
          BottomNavigationBarThemeData(backgroundColor: AppColors.black),
      textTheme: TextTheme(
          displayLarge: TextStyle(
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.bold,
              color: AppColors.white,
              fontSize: 20.sp),
          displayMedium: TextStyle(
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.w700,
              color: AppColors.white,
              fontSize: 16.sp),
          displaySmall: TextStyle(
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.w400,
              color: AppColors.white,
              fontSize: 14.sp)),
      inputDecorationTheme: InputDecorationTheme(
          fillColor: AppColors.black,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(16))));

  static TextTheme textTheme() => TextTheme(
      displayLarge: TextStyle(
          fontFamily: 'Montserrat',
          fontWeight: FontWeight.bold,
          color: Colors.black,
          fontSize: 20.sp),
      displayMedium: TextStyle(
          fontFamily: 'Montserrat',
          fontWeight: FontWeight.w700,
          fontSize: 16.sp),
      displaySmall: TextStyle(
          fontFamily: 'Montserrat',
          fontWeight: FontWeight.w400,
          fontSize: 14.sp));

  static AppBarTheme appBarTheme() => AppBarTheme(
      backgroundColor: Colors.white,
      centerTitle: true,
      titleTextStyle: TextStyle(
          fontFamily: 'Montserrat',
          fontWeight: FontWeight.w700,
          color: AppColors.black,
          fontSize: 16.sp));
}
