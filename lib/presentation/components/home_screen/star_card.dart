import 'package:doctor_hunt/presentation/components/images/svg_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class StarCard extends StatelessWidget {

  final bool isYellow;

  const StarCard({super.key, required this.isYellow});

  @override
  Widget build(BuildContext context) {

    return SizedBox(
      height: 12.w,
      width: 12.w,
      child: isYellow?SvgImage.yellowStarSvg:SvgImage.grayStarSvg,
    );

  }
}
