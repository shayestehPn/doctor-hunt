import 'package:doctor_hunt/presentation/components/images/png_images.dart';
import 'package:doctor_hunt/presentation/components/images/svg_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnBrandingFirst extends StatelessWidget {
  const OnBrandingFirst({Key? key}) : super(key: key);

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
                      alignment: Alignment.topLeft,
                      children: [
                        SizedBox(
                          height: 427.w,
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
                        Center(
                            child: Container(
                              height: 336.w,
                              width: 336.w,
                              margin: EdgeInsets.only(top: 93.h),
                              child: PngImage.doctor1Png,
                            )
                        )
                      ],
                    ),
                    Text("Find Trusted Doctors",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 20.sp,
                        color: Colors.black
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
                            color: Colors.grey.withOpacity(0.9)
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          )
      ),
    );
  }
}
