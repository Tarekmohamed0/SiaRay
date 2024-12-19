library theme;

import 'package:flutter/material.dart';

import '../constants/constants.dart';

ThemeData getApplicationTheme() {
  return ThemeData(
    // main colors
    primaryColor: AppColor.primary,
    primaryColorLight: AppColor.secondary,
    primaryColorDark: AppColor.darkGrey,
    disabledColor: AppColor.lightGrey,
    splashColor: AppColor.lightBlue, // ripple effect color
    // card view
    cardTheme: CardTheme(
      color: AppColor.white,
      shadowColor: AppColor.black,
      elevation: AppSize.s4,
      margin: EdgeInsets.all(10),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
    ),
    // app bar theme
    appBarTheme: AppBarTheme(
      color: AppColor.white,
      elevation: 0,
      centerTitle: true,
      iconTheme: IconThemeData(
        color: AppColor.white,
      ),
      titleTextStyle: AppTextStyle.mediumText,
    ),

    // botton theme
    buttonTheme: ButtonThemeData(
      buttonColor: AppColor.primary,
      textTheme: ButtonTextTheme.primary,
      disabledColor: AppColor.lightGrey,
      splashColor: AppColor.lightBlue,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
    ),

    //  elevated button theme
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        backgroundColor: WidgetStateProperty.all(AppColor.primary),
        shape: WidgetStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
        ),
        textStyle: WidgetStateProperty.all(AppTextStyle.mediumText),
      ),
    ),

    // text theme
    textTheme: TextTheme(
      displayLarge: AppTextStyle.title,
      displayMedium: AppTextStyle.mediumText,
      displaySmall: AppTextStyle.subtitle,
      headlineSmall: AppTextStyle.lightText,
    ),
    // input decoration theme text field
    inputDecorationTheme: InputDecorationTheme(
      contentPadding: EdgeInsets.all(AppPadding.p16),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: BorderSide(
          color: AppColor.lightGrey,
        ),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: BorderSide(
          color: AppColor.primary,
        ),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: BorderSide(
          color: AppColor.lightGrey,
          width: AppSize.s1,
        ),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: BorderSide(
          width: AppSize.s1,
          color: Colors.red,
        ),
      ),
      labelStyle: AppTextStyle.subtitle,
      hintStyle: AppTextStyle.subtitle,
      errorStyle: AppTextStyle.subtitle.copyWith(color: Colors.red),
    ),
  );
}
