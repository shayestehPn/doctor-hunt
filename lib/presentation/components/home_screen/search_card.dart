import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../constants/colors.dart';
import '../../../constants/styles.dart';
import '../images/svg_images.dart';

class SearchCard extends StatelessWidget {

  final Function() onClick;

  const SearchCard({super.key, required this.onClick});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        onClick();
      },
      child: Container(
        height: 54.h,
        margin: EdgeInsets.fromLTRB(20.w,126.h,20.w,0),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: AppStyles.cardBorderRadius,
            boxShadow: [AppStyles.equalBoxShadow]
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
            Expanded(
                child: Align(
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
      ),
    );
  }
}
