import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../constants/colors.dart';
import '../../../constants/styles.dart';
import '../images/svg_images.dart';
import '../network_image.dart';


class HomeAppBar extends StatelessWidget {

  final String userImageUrl;
  final String userName;

  const HomeAppBar({super.key, required this.userImageUrl, required this.userName});

  @override
  Widget build(BuildContext context) {
      return  Container(
          height: 156.h,
          decoration: const BoxDecoration(
              color: AppColors.green,
              borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(20),
                  bottomLeft: Radius.circular(20)
              )
          ),
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 20.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Hi $userName",
                      style: TextStyle(
                          fontSize: 20.sp,
                          fontWeight: FontWeight.w300,
                          color: Colors.white
                      ),
                    ),
                    SizedBox(height: 6.h),
                    Text("Find Your Doctor",
                      style: TextStyle(
                          fontSize: 25.sp,
                          fontWeight: FontWeight.w700,
                          color: Colors.white
                      ),
                    )
                  ],
                ),
                SizedBox(
                  width: 60.w,
                  height: 60.w,
                  child: CustomNetworkImage(
                      imageUrl: userImageUrl,
                      width: 60.w,
                    height: 60.w,
                    borderRadius: BorderRadius.circular(80),
                  ),
                )
              ],
            ),
          ),
        );
  }
}
