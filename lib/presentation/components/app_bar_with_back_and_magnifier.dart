import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'button_with_touch_point.dart';
import 'images/svg_images.dart';


class AppBarWithBackAndMagnifier extends StatelessWidget {

  final Function() backOnClick;
  final String title;
  final Function()? magnifierOnClick;
  bool showMagnifier;

   AppBarWithBackAndMagnifier({
    super.key,
    required this.title,
    required this.showMagnifier,
     required this.backOnClick,
     this.magnifierOnClick,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 32.h),
        Row(
          children: [
            GestureDetector(
              onTap: (){
                backOnClick();
              },
              child: Container(
                height: 30.w,
                width: 30.w,
                margin: EdgeInsets.only(right: 10.w,left: 20.w),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,

                ),
                child: SvgImage.arrowLeftSvg,
              ),
            ),
            Text(title,
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 18.sp,
                  color: Colors.black,
                  fontWeight: FontWeight.w500
              ),
            ),
            showMagnifier?Expanded(
                child: Align(
                  alignment: Alignment.centerRight,
                  child: ButtonWithTouchPoint(
                    buttonWidget: SizedBox(
                      height: 18.w,
                      width: 18.w,
                      child: SvgImage.magnifierSvg,
                    ),
                    touchingAreaHeight: 60.w,
                    touchingAreaWidth: 60.w,
                    onClick: () {
                      magnifierOnClick!();
                    },
                    alignmentOfWidgetOnStack: Alignment.center,
                  ),
                )
            ):Container()
          ],
        )
      ],
    );
  }
}
