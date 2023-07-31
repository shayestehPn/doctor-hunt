import 'package:doctor_hunt/constants/colors.dart';
import 'package:doctor_hunt/constants/styles.dart';
import 'package:doctor_hunt/presentation/components/images/svg_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'button_with_touch_point.dart';

class SearchTextField extends StatelessWidget {

  final TextEditingController controller;
  final Function() closeOnClick;
  final Function() magnifierOnClick;

   const SearchTextField({
     super.key,
     required this.controller,
     required this.closeOnClick,
     required this.magnifierOnClick
   });



  @override
  Widget build(BuildContext context) {
    return Container(
      height: 54.h,
      width: 335.w,
      margin: EdgeInsets.only(top: 34.h),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: AppStyles.cardBorderRadius,
          boxShadow: [AppStyles.equalBoxShadow]
      ),
      child: Row(
        children: [
          ButtonWithTouchPoint(

            buttonWidget: Container(
              height: 13.w,
              width: 13.w,
              margin: EdgeInsets.only(left: 20.w),
              child: SvgImage.magnifierSvg,
            ),
            touchingAreaHeight: 26.w,
            touchingAreaWidth: 26.w,
            onClick: () {
              magnifierOnClick();
            },
            alignmentOfWidgetOnStack: Alignment.center,
          ),
          Expanded(
              child: TextField(
                  textAlign: TextAlign.left,
                  textDirection: TextDirection.ltr,
                  maxLines: 1,
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 15.sp,
                      color: AppColors.gray,
                  ),
                  controller: controller,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.only(left: 12.w),
                  ),

              )
          ),
          Expanded(
              child: Align(
                alignment: Alignment.centerRight,
                child : ButtonWithTouchPoint(
                  buttonWidget: Container(
                    height: 11.w,
                    width: 11.w,
                    margin: EdgeInsets.only(right: 21.w),
                    child: SvgImage.closeSvg,
                  ),
                  touchingAreaHeight: 33.w,
                  touchingAreaWidth: 33.w,
                  onClick: () {
                    closeOnClick();
                  },
                  alignmentOfWidgetOnStack: Alignment.center,
                ),
              )
          )
        ],
      ),
    );
  }
}
