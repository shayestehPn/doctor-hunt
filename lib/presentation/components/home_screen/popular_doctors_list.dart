import 'package:doctor_hunt/presentation/components/home_screen/popular_doctor_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../data/model/doctor_popular_model.dart';

class PopularDoctorsList extends StatelessWidget {
  final List<DoctorPopularModel> popularDoctorsList;

  const PopularDoctorsList({super.key, required this.popularDoctorsList});

  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 284.h,
      margin: EdgeInsets.only(top: 22.h),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        physics: const ClampingScrollPhysics(),
        padding: EdgeInsets.only(left: 20.w,right: 5.w),
        itemCount: popularDoctorsList.length,
        itemBuilder: (context, index) {
          return  PopularDoctorCard(model: popularDoctorsList[index]);
        },
      ),
    );
  }
}
