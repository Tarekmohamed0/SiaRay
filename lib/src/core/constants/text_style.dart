library text_style;

import 'package:final_project/src/core/constants/constants.dart';
import 'package:flutter/material.dart';

mixin FontFamily {
  static String get primary => 'Montserrat';
  static String get secondary => 'Roboto';
}
mixin AppFontWeight {
  static FontWeight get w100 => FontWeight.w100;
  static FontWeight get w200 => FontWeight.w200;
  static FontWeight get w300 => FontWeight.w300;
  static FontWeight get w400 => FontWeight.w400;
  static FontWeight get w500 => FontWeight.w500;
  static FontWeight get w600 => FontWeight.w600;
  static FontWeight get w700 => FontWeight.w700;
  static FontWeight get w800 => FontWeight.w800;
  static FontWeight get w900 => FontWeight.w900;
}

mixin Fontsize {
  static double get s12 => 12.0;
  static double get m14 => 14.0;
  static double get l16 => 16.0;
  static double get xl18 => 18.0;
  static double get xxl20 => 20.0;
  static double get xxxl22 => 22.0;
}
//
mixin Font implements AppFontWeight {
  static FontWeight get l => FontWeight.w300;
  static FontWeight get n => FontWeight.w400;
  static FontWeight get sb => FontWeight.w500;
  static FontWeight get b => FontWeight.w700;
}

mixin size implements Fontsize {
  static double get s12 => 12.0;
  static double get m14 => 14.0;
  static double get l16 => 16.0;
  static double get xl18 => 18.0;
  static double get xxl20 => 20.0;
  static double get xxxl22 => 22.0;
}
// mixin for fontfamily
mixin fontFamily implements FontFamily {
  static String get primary => 'Poppins';
  static String get secondary => 'Roboto';
}

//
class AppTextStyle extends TextStyle {
  static TextStyle get header => TextStyle();
  static TextStyle get title => TextStyle(
      color: AppColor.darkGrey,
      fontSize: size.xl18,
      fontFamily: fontFamily.primary,
      fontWeight: Font.b);
  // regular text style
  static TextStyle get subtitle => TextStyle(
      color: AppColor.lightGrey,
      fontSize: size.m14,
      fontFamily: fontFamily.primary,
      fontWeight: Font.n);
  // medium text style
  static TextStyle get mediumText => TextStyle(
      color: Colors.white,
      fontSize: size.l16,
      fontFamily: fontFamily.primary,
      fontWeight: Font.sb);
  // light text style
  static TextStyle get lightText => TextStyle(
      color: AppColor.lightGrey,
      fontSize: size.m14,
      fontFamily: fontFamily.primary,
      fontWeight: Font.l);
  // static TextStyle get body => TextStyle();
  // static TextStyle get caption => TextStyle();
  // static TextStyle get button => TextStyle();
  // static TextStyle get overline => TextStyle();
  // static TextStyle get display => TextStyle();
  // static TextStyle get headline => TextStyle();
  // static TextStyle get subhead => TextStyle();
  // static TextStyle get paragraph => TextStyle();
}
