import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../constants/styles.dart';
import '../components/images/png_images.dart';
import '../components/images/svg_images.dart';

class OnBrandingThird extends StatelessWidget {
  const OnBrandingThird({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Material(
          color: Colors.white,
          child: Column(
            children: [
              Expanded(
                child: ListView(
                  shrinkWrap: true,
                  padding: const EdgeInsets.all(0),
                  children: [
                    Stack(
                      children: [
                        SizedBox(
                          height: MediaQuery.of(context).size.height,
                          width: MediaQuery.of(context).size.width,
                        ),
                        Positioned(
                          left: -50.w,
                          child: SizedBox(
                            height: 342.w,
                            width: 342.w,
                            child: SvgImage.circleTopLeftSvg,
                          ),
                        ),
                        Column(
                          children: [
                            Container(
                              height: 336.w,
                              width: 336.w,
                              margin: EdgeInsets.only(top: 91.h),
                              child: PngImage.doctor3Png,
                            ),
                            SizedBox(height: 85.h),
                            Text("Easy Appointments",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 28.sp,
                                  color: Colors.black,
                                fontWeight: AppStyles.mediumFont,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 43.w),
                              child: Text("Contrary to popular belief, Lorem Ipsum is not"
                                  " simply random text. "
                                  "It has roots in a piece of it over"
                                  " 2000 years old.",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 14.sp,
                                    color: Colors.grey.withOpacity(0.9),
                                    fontWeight:  AppStyles.regularFont
                                ),
                              ),
                            )
                          ],
                        )
                      ],
                    ),

                  ],
                ),
              )
            ],
          )
      ),
    );
  }
}
