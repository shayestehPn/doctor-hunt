import 'package:doctor_hunt/presentation/components/images/svg_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FindDoctorAppBar extends StatelessWidget {

  final Function() backOnClick;

  const FindDoctorAppBar({super.key, required this.backOnClick});

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
            Text("Find Trusted Doctors",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 18.sp,
                  color: Colors.black,
                fontWeight: FontWeight.w500
              ),
            )

          ],
        )
      ],
    );
  }
}
