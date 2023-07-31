import 'package:doctor_hunt/constants/colors.dart';
import 'package:doctor_hunt/constants/styles.dart';
import 'package:doctor_hunt/presentation/components/images/svg_images.dart';
import 'package:doctor_hunt/presentation/components/network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../data/model/doctor_model.dart';

class FavoriteDoctorCard extends StatelessWidget {

  final DoctorModel doctorModel;

  const FavoriteDoctorCard({super.key, required this.doctorModel});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: AppStyles.cardBorderRadius,
          boxShadow:[AppStyles.equalBoxShadow],
        color: Colors.white
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Align(
            alignment: Alignment.centerRight,
            child: Container(
              height: 16.w,
              width: 16.w,
              margin: EdgeInsets.only(right: 10.w,top: 10.h),
              child: SvgImage.solidHeartSvg,
            ),
          ),
          CustomNetworkImage(
              imageUrl: doctorModel.imageUrl,
              height: 84.w,
              width: 84.w,
              borderRadius: BorderRadius.circular(100)
          ),
          SizedBox(height: 11.h),
          Text(
            doctorModel.name,
            style: TextStyle(
              fontWeight: AppStyles.mediumFont,
              fontSize: 15.sp,
              color: Colors.black
            ),
          ),
          SizedBox(height: 4.h),
          Text(
            doctorModel.medicalCategory,
            style: TextStyle(
                fontWeight: AppStyles.normalFont,
                fontSize: 12.sp,
                color: AppColors.green
            ),
          ),

        ],
      ),
    );
  }
}
