
import 'package:doctor_hunt/constants/colors.dart';
import 'package:doctor_hunt/presentation/components/home_screen/home_app_bar.dart';
import 'package:doctor_hunt/presentation/components/loading_dilaog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../business_logic/home_screen/home_cubit.dart';
import '../../business_logic/home_screen/home_state.dart';
import '../components/home_screen/live_doctors_list.dart';
import '../components/home_screen/medical_category_list.dart';
import '../components/home_screen/popular_doctor_header.dart';
import '../components/home_screen/popular_doctors_list.dart';
import '../components/home_screen/search_card.dart';
import '../components/images/png_images.dart';
import '../components/images/svg_images.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);
  


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider<HomeCubit>(
        create: (context) {
          final cubit = HomeCubit();
          cubit.getData();
          return cubit;
        },
        child: BlocConsumer<HomeCubit, HomeState>(
          listener: (context, homeState) {
            if (homeState is Failure) {
              Navigator.pop(context);
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  backgroundColor: Colors.green,
                  content: Text(homeState.error),
                ),
              );
            }
          },
          builder: (context, state) {
             if(state is Loading){
               return const LoadingDialog();
             }
             if(state is Success){
               return  Scaffold(
                 body: Material(
                   child: Stack(
                     children: [
                       Positioned(
                         top: 140.h,
                         left: -20.w,
                         child: SizedBox(
                           height: 216.w,
                           width: 216.w,
                           child: PngImage.blueBlurPng,
                         ),
                       ),
                       Positioned(
                         right: 0,
                         top: 942.h,
                         child: SizedBox(
                           height: 242.w,
                           width: 242.w,
                           child: PngImage.greenBlurPng,
                         ),
                       ),
                       Column(
                         children: [
                           HomeAppBar(
                               userImageUrl: state.dto.userImageUrl,
                               userName: state.dto.userName
                           ),
                           Expanded(
                               child: ListView(
                                 padding: const EdgeInsets.all(0),
                                 children: [
                                   Column(
                                     crossAxisAlignment: CrossAxisAlignment.start,
                                     children: [
                                       Padding(
                                         padding: EdgeInsets.only(left: 20.w,top: 54.h),
                                         child: Text("Live Doctors",
                                         style: TextStyle(
                                             fontSize: 18.sp,
                                             fontWeight: FontWeight.w500,
                                             color: Colors.black
                                         ),
                                       ),
                                       ),
                                       LiveDoctorsList(
                                           liveDoctorsList: state.dto.liveDoctorsList
                                       ),
                                       const MedicalCategoryList(),
                                       const PopularDoctorHeader(),
                                       PopularDoctorsList(
                                         popularDoctorsList: state.dto.popularDoctorsList
                                       )

                                     ],
                                   )
                                 ],
                               )
                           )
                         ],
                       ),
                       const SearchCard()
                     ],
                   ),
                 ),
               );
             }
             else{
               return Container();
             }
          },
        ),
      ),
    );
  }
}