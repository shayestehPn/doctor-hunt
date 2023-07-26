import 'package:doctor_hunt/presentation/components/button_with_touch_point.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../constants/colors.dart';
import '../images/svg_images.dart';


class DoctorTitle extends StatelessWidget {

  final String title;
  final Function() seeMoreOnClick;

  const DoctorTitle({super.key, required this.title, required this.seeMoreOnClick});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: Row(
          children: [
            ButtonWithTouchPoint(
                buttonWidget: Row(
                  children: [
                    Container(
                      height: 6.h,
                      width: 3.w,
                      margin: EdgeInsets.only(left: 2.w),
                      child: SvgImage.arrowRightSvg,
                    ),
                    Text("See all",
                      style: TextStyle(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w300,
                          color: AppColors.gray
                      ),
                    )
                  ],
                ),
                touchingAreaHeight: 52.h,
                touchingAreaWidth: 120.w,
                onClick: (){
                  seeMoreOnClick();
                }
            ),
            Expanded(
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(title,
                  style: TextStyle(
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w500,
                      color: Colors.black
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
