import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../data/model/doctor_model.dart';
import 'popular_doctor_card_on_popular_page.dart';

class PopularDoctorsListOnPopularPage extends StatelessWidget {

  final List<DoctorModel> doctorsList;

  const PopularDoctorsListOnPopularPage({super.key, required this.doctorsList});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        physics: const ClampingScrollPhysics(),
        padding:  EdgeInsets.only(top: 17.h, bottom: 14.h),
        shrinkWrap: true,
        itemCount: doctorsList.length,
        itemBuilder: (BuildContext context, int index) {
          return  PopularDoctorCardOnPopularPage(
            model: doctorsList[index],
          );
        }
    );
  }
}

