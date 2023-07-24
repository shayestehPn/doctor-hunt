import 'package:doctor_hunt/presentation/components/button_with_touch_point.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'images/svg_images.dart';


class AppBarWithBackAndMagnifier extends StatelessWidget {

  final Function() backOnClick;
  final String title;
  final Function() magnifierOnClick;

  const AppBarWithBackAndMagnifier({
    super.key,
    required this.backOnClick,
    required this.title,
    required this.magnifierOnClick
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
            // Expanded(
            //     child: Align(
            //       alignment: Alignment.centerRight,
            //       child: ButtonWithTouchPoint(
            //         buttonWidget: null,
            //         touchingAreaHeight: null,
            //         touchingAreaWidth: null,
            //         onClick: () {
            //
            //         }),
            //     )
            // )
          ],
        )
      ],
    );
  }
}
