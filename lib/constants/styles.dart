import 'package:flutter/material.dart';

class AppStyles{

  //radiuses
  static BorderRadius cardBorderRadius= BorderRadius.circular(6);

  static BorderRadius bottomNavigationBarBorderRadius= const BorderRadius.only(
    topRight: Radius.circular(20),
    topLeft: Radius.circular(20)
  );

  // fonts

  static FontWeight thinFont=FontWeight.w100;
  static FontWeight extraLightFont=FontWeight.w200;
  static FontWeight lightFont=FontWeight.w300;
  static FontWeight normalFont=FontWeight.w400;
  static FontWeight mediumFont=FontWeight.w500;
  static FontWeight semiBoldFont=FontWeight.w600;
  static FontWeight boldFont=FontWeight.w700;
  static FontWeight extraBoldFont=FontWeight.w800;

  //box shadow

  static BoxShadow equalBoxShadow=BoxShadow(
  color: const Color(0xffC9C5CA).withOpacity(0.5),
  blurRadius: 5,
  spreadRadius: 1,
  offset: const Offset(1, 1),
  );


}