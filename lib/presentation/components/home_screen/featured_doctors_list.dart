import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../data/model/doctor_model.dart';
import 'featured_doctor_card.dart';


class FeaturedDoctorsList extends StatelessWidget {

  final List<DoctorModel> featuredDoctorsList;
  final Function(int index) itemOnClick;

  const FeaturedDoctorsList({super.key, required this.featuredDoctorsList, required this.itemOnClick});

  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 160.h,
      margin: EdgeInsets.only(top: 22.h),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        physics: const ClampingScrollPhysics(),
        padding: EdgeInsets.only(left: 20.w,right: 8.w),
        itemCount: featuredDoctorsList.length,
        itemBuilder: (context, index) {
          return  FeaturedDoctorCard(
            model: featuredDoctorsList[index],
            onClick: () {
              itemOnClick(index);
            },
          );
        },
      ),
    );
  }
}
