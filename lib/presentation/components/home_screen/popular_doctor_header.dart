import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../constants/colors.dart';
import '../images/svg_images.dart';


class PopularDoctorHeader extends StatelessWidget {
  const PopularDoctorHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: Row(
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
            ),
            Expanded(
              child: Align(
                alignment: Alignment.topLeft,
                child: Text("Popular Doctor",
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
