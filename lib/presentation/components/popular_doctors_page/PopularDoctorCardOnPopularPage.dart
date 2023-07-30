import 'package:doctor_hunt/data/model/doctor_popular_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../constants/colors.dart';
import '../../../constants/styles.dart';
import '../five_stars.dart';
import '../images/svg_images.dart';
import '../network_image.dart';


class PopularDoctorCardOnPopularPage extends StatelessWidget {

  final DoctorPopularModel model;

  const PopularDoctorCardOnPopularPage({super.key,required this.model});

  @override
  Widget build(BuildContext context) {
    return  Container(
      margin: EdgeInsets.fromLTRB(20.w, 0, 20.w, 14.h),
      padding: EdgeInsets.fromLTRB(10.w, 10.h, 15.w, 10.h),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
          boxShadow: [
            BoxShadow(
              color: const Color(0xffC9C5CA).withOpacity(0.2),
              blurRadius: 3,
              spreadRadius: 1,
              offset: const Offset(3, 1),
            )
          ]
      ),
      child: Row(
        children: [
          CustomNetworkImage(
              imageUrl: model.imageUrl,
              height: 71.w,
              width: 71.w,
              borderRadius: BorderRadius.circular(4)
          ),
          SizedBox(width: 8.w),
          Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        model.name,
                        style: TextStyle(
                            fontSize: 16.sp,
                            fontWeight: AppStyles.mediumFont,
                            color: AppColors.black
                        ),
                      ),
                      SizedBox(
                        height: 15.w,
                        width: 15.w,
                        child: model.isLikedByUser?
                        SvgImage.solidHeartSvg:SvgImage.emptyHeartSvg,
                      )
                    ],
                  ),
                  SizedBox(height: 3.h),
                  Text(
                    model.medicalCategory,
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        fontSize: 12.sp,
                        fontWeight: AppStyles.lightFont,
                        color: AppColors.gray
                    ),
                  ),
                  SizedBox(height: 6.h),
                  FiveStars(score: model.score)
                ],
              )
          )
        ],
      ),
    );
  }
}
