import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../images/svg_images.dart';

class MedicalCategoryList extends StatelessWidget {
  const MedicalCategoryList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 180.h,
      child: ListView(
        scrollDirection: Axis.horizontal,
        physics: const ClampingScrollPhysics(),
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        children: [
          SvgImage.toothCategorySvg,
          SvgImage.heartCategorySvg,
          SvgImage.eyeCategorySvg,
          SvgImage.bodyCategorySvg
        ],
      ),
    );
  }
}
