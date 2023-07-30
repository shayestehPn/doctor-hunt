
import 'package:doctor_hunt/presentation/components/images/svg_images.dart';
import 'package:doctor_hunt/presentation/components/network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../constants/styles.dart';
import '../../../data/model/doctor_model.dart';

class LiveDoctorCard extends StatelessWidget {

  final DoctorModel model;

  const LiveDoctorCard({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: EdgeInsets.only(right: 15.w),
          height: 168.h,
          width: 116.w,
          child: CustomNetworkImage(
              imageUrl: model.imageUrl,
              height: 168.h,
              width: 116.w,
            borderRadius: AppStyles.cardBorderRadius,
          ),
        ),
        Container(
          margin: EdgeInsets.only(right: 15.w),
          height: 168.h,
          width: 116.w,
          decoration: BoxDecoration(
            color: const Color(0xff000000).withOpacity(0.2),
            borderRadius: AppStyles.cardBorderRadius
          ),
        ),
        Container(
          height: 30.w,
          width: 30.w,
          margin: EdgeInsets.only(left: 43.w,top: 69.h),
          child: SvgImage.playSvg,
        ),
        Container(
          height: 18.h,
          width: 42.w,
          margin: EdgeInsets.only(left: 65.w,top: 11.h),
          child: SvgImage.liveCardSvg,
        ),
      ],
    );
  }
}
