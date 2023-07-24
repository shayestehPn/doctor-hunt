import 'package:flutter/material.dart';

class AppStyles{

  static BorderRadius cardBorderRadius= BorderRadius.circular(6);

  static BorderRadius bottomNavigationBarBorderRadius= const BorderRadius.only(
    topRight: Radius.circular(20),
    topLeft: Radius.circular(20)
  );

  static FontWeight thinFont=FontWeight.w100;
  static FontWeight extraLightFont=FontWeight.w200;
  static FontWeight lightFont=FontWeight.w300;
  static FontWeight normalFont=FontWeight.w400;
  static FontWeight mediumFont=FontWeight.w500;
  static FontWeight semiBoldFont=FontWeight.w600;
  static FontWeight boldFont=FontWeight.w700;
  static FontWeight extraBoldFont=FontWeight.w800;
}