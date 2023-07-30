import 'package:doctor_hunt/constants/colors.dart';
import 'package:doctor_hunt/presentation/components/network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../data/model/doctor_model.dart';
import '../five_stars.dart';


class PopularDoctorCard extends StatelessWidget {

  final DoctorModel model;

  const PopularDoctorCard({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 284.h,
      width: 190.w,
      margin: EdgeInsets.only(right: 15.w),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.white
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 180.h,
            width: 190.w,
            child: CustomNetworkImage(
                imageUrl: model.imageUrl,
                height: 180.h,
                width: 190.w,
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(2),
                  bottomRight: Radius.circular(2),
                  topLeft: Radius.circular(12),
                  topRight: Radius.circular(12)),
            ),
          ),
          SizedBox(height: 14.h),
          Text(model.name,
            style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 18.sp,
              color: Colors.black
            ),
          ),
          Text(model.medicalCategory,
            style: TextStyle(
                fontWeight: FontWeight.w200,
                fontSize: 12.sp,
                color: AppColors.gray
            ),
          ),
          SizedBox(height: 6.h),
          FiveStars(score: model.score)
        ],
      ),
    );
  }
}
