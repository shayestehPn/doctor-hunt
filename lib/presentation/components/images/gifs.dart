import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import '../../../utils/Assistance.dart';


class Gif{

  static final  Widget loaderGif =  Lottie.asset(
      '${Assistance.jsonFilesLocation}loader.json',repeat: true
  );


}