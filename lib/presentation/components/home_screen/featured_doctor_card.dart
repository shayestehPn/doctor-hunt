import 'package:doctor_hunt/constants/colors.dart';
import 'package:doctor_hunt/constants/styles.dart';
import 'package:doctor_hunt/data/model/doctor_featured_model.dart';
import 'package:doctor_hunt/presentation/components/images/svg_images.dart';
import 'package:doctor_hunt/presentation/components/network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FeaturedDoctorCard extends StatelessWidget {

  final DoctorFeaturedModel model;
  final Function() onClick;

  const FeaturedDoctorCard({super.key, required this.model, required this.onClick});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        onClick();
      },
      child: Container(
        height: 160.h,
        width: 96.w,
        margin: EdgeInsets.only(right: 12.w),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: AppStyles.cardBorderRadius),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Directionality(
                textDirection: TextDirection.rtl,
                child: Padding(
                  padding: EdgeInsets.only(right: 9.w,left: 9.w,top: 9.h,bottom: 8.h),
                  child: Row(
                    children: [
                      Text(model.score.toString(),
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 10.sp,
                            color: Colors.black
                        ),
                      ),
                      Container(
                        height: 9.w,
                        width: 9.w,
                        margin: EdgeInsets.only(right: 6.w),
                        child: SvgImage.yellowStarSvg,
                      ),
                      Expanded(
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: model.isLikedByUser?SvgImage.solidHeartSvg:SvgImage.emptyHeartSvg,
                          )
                      )
                    ],
                  ),
                )
            ),
            CustomNetworkImage(
                imageUrl: model.imageUrl,
                height: 54.w,
                width: 54.w,
                borderRadius: BorderRadius.circular(100)
            ),
            SizedBox(height: 10.h),
            Text(model.name,
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 12.sp,
                  color: Colors.black
              ),
            ),
            RichText(
              text: TextSpan(
                style: TextStyle(fontSize: 9.sp),
                children:  <TextSpan>[
                  const TextSpan(
                      text: "\$",
                      style: TextStyle(
                          fontWeight: FontWeight.normal,
                        color: AppColors.green
                      )
                  ),
                  TextSpan(
                      text: " ${model.priceEveryHour}/hours",
                      style: const TextStyle(
                          fontWeight: FontWeight.w300,
                          color: AppColors.gray
                      )
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
