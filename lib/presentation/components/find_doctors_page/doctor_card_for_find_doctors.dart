import 'package:doctor_hunt/data/model/doctor_model_for_find_doctors.dart';
import 'package:doctor_hunt/presentation/components/custom_solid_green_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../constants/colors.dart';
import '../images/svg_images.dart';
import '../network_image.dart';


class DoctorCardForFindDoctors extends StatelessWidget {

  final DoctorModelForFindDoctors model;
  final Function() bookOnClick;

  const DoctorCardForFindDoctors({super.key, required this.model,required this.bookOnClick});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10.h,right: 20.w,left: 20.w),
      padding: EdgeInsets.only(top: 22.h,right: 17.w,left: 20.w,bottom: 14.h),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: const Color(0xffC9C5CA).withOpacity(0.5),
              blurRadius: 5,
              spreadRadius: 1,
              offset: const Offset(1, 1),
            )
          ]
      ),
      child: Column(
        children: [
          Row(
            children: [
              CustomNetworkImage(
                imageUrl: model.imageUrl,
                height: 87.h,
                width: 92.w,
                borderRadius: BorderRadius.circular(4),
              ),
              SizedBox(width: 14.w),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          model.name,
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 18.sp
                          ),
                        ),
                        SizedBox(
                          height: 19.w,
                          width: 19.w,
                          child: model.isLikedByUser?SvgImage.solidHeartSvg:SvgImage.emptyHeartSvg,
                        )
                      ],
                    ),
                    Text(
                      model.medicalCategory,
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 13.sp,
                        color: AppColors.green
                      ),
                    ),
                    Text(
                      "${model.yearsOfExperience} years experience",
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 13.sp,
                          color: AppColors.gray
                      ),
                    ),
                    Row(
                      children: [
                        Container(
                          height: 10.w,
                          width: 10.w,
                          margin: EdgeInsets.only(right: 4.w),
                          child: SvgImage.greenCircleSvg,
                        ),
                        Text(
                          "${model.satisfyPercent}%",
                          style: TextStyle(
                              fontWeight: FontWeight.w300,
                              fontSize: 11.sp,
                              color: AppColors.gray
                          ),
                        ),
                        Container(
                          height: 10.w,
                          width: 10.w,
                          margin: EdgeInsets.only(right: 4.w,left: 17.w),
                          child: SvgImage.greenCircleSvg,
                        ),
                        Text(
                          "${model.numberOfPreviousPatients} patient stories",
                          style: TextStyle(
                              fontWeight: FontWeight.w300,
                              fontSize: 11.sp,
                              color: AppColors.gray
                          ),
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Text(
                    "next available",
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 13.sp,
                        color: AppColors.green
                    ),
                  ),
                  Text(
                    "${model.nextAvailableTime} ${model.nextAvailableDate.day} ${model.nextAvailableDate.month}",
                    style: TextStyle(
                        fontWeight: FontWeight.w300,
                        fontSize: 12.sp,
                        color: AppColors.gray
                    ),
                  ),

                ],
              ),
              CustomSolidGreenButton(
                  height: 34.h,
                  width: 112.w,
                  text:  "book now",
                  onClick: (){
                    bookOnClick();
                  })
            ],
          )
        ],
      ),
    );
  }
}
