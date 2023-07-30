import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../data/model/doctor_model.dart';
import 'favorite_doctor_card.dart';

class FavoriteDoctorsList extends StatelessWidget {

  final List<DoctorModel> doctorsList;

  const FavoriteDoctorsList({super.key, required this.doctorsList});



  @override
  Widget build(BuildContext context) {
    return GridView.count(
        physics: const ScrollPhysics(),
        childAspectRatio: 0.9,
        crossAxisSpacing: 15.w,
        mainAxisSpacing: 15.h,
        shrinkWrap: true,
        crossAxisCount:2,
        padding: EdgeInsets.symmetric(horizontal: 20.w,vertical: 24.h),
        children: List.generate(
            doctorsList.length, (int position) {
              return FavoriteDoctorCard(
                doctorModel: doctorsList[position],
              );
            }
            )
    );
  }
}
