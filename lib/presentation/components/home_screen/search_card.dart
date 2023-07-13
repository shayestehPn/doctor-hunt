import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../constants/colors.dart';
import '../../../constants/styles.dart';
import '../images/svg_images.dart';

class SearchCard extends StatelessWidget {
  const SearchCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 54.h,
      margin: EdgeInsets.fromLTRB(20.w,126.h,20.w,0),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: AppStyles.cardBorderRadius,
          boxShadow: [
            BoxShadow(
              color: const Color(0xffC9C5CA).withOpacity(0.5),
              blurRadius: 5, // soften the shadow
              spreadRadius: 1, //extend the shadow
              offset: const Offset(1, 1),
            )
          ]
      ),
      child: Row(
        children: [
          Container(
            height: 13.w,
            width: 13.w,
            margin: EdgeInsets.only(left: 20.w,right: 12.w),
            child: SvgImage.magnifierSvg,
          ),
          Text("Search..... ",
            style: TextStyle(
                fontSize: 15.sp,
                fontWeight: FontWeight.w500,
                color: AppColors.gray
            ),
          ),
          Expanded(child: Align(
            alignment: Alignment.centerRight,
            child: Container(
              height: 11.w,
              width: 11.w,
              margin:EdgeInsets.only(right: 20.w),
              child: SvgImage.closeSvg,
            ),
          ))
        ],
      ),
    );
  }
}
