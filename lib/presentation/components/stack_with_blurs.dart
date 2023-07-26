import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'images/png_images.dart';

class StackWithBlurs extends StatelessWidget {
  final Widget pageContent;
  final bool showBlueBlur;
  final bool showGreenBlur;

  const StackWithBlurs({
    super.key,
    required this.showBlueBlur,
    required this.showGreenBlur,
    required this.pageContent,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Material(
            child: Stack(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.white,
                ),
               showBlueBlur? Positioned(
                  top: 0,
                  left: -20.w,
                  child: SizedBox(
                    height: 216.w,
                    width: 216.w,
                    child: PngImage.blueBlurPng,
                  ),
                ):Container(),
                showGreenBlur?Positioned(
                  right: 0,
                  bottom: -20.h,
                  child: SizedBox(
                    height: 242.w,
                    width: 242.w,
                    child: PngImage.greenBlurPng,
                  ),
                ):Container(),
                pageContent
              ],
            )
        )
    );;
  }
}
