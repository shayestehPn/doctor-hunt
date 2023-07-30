
import 'package:doctor_hunt/presentation/components/home_screen/featured_doctors_list.dart';
import 'package:doctor_hunt/presentation/components/home_screen/home_app_bar.dart';
import 'package:doctor_hunt/presentation/components/loading_dilaog.dart';
import 'package:doctor_hunt/presentation/components/stack_with_blurs.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../business_logic/home_screen/home_cubit.dart';
import '../../business_logic/home_screen/home_state.dart';
import '../../routing/routes.dart';
import '../components/home_screen/live_doctors_list.dart';
import '../components/home_screen/medical_category_list.dart';
import '../components/home_screen/doctor_title.dart';
import '../components/home_screen/popular_doctors_list.dart';
import '../components/home_screen/search_card.dart';


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
               return StackWithBlurs(
                 showBlueBlur: true,
                 showGreenBlur: true,
                 pageContent:  Stack(
                   children: [
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
                                      DoctorTitle(title: "Popular Doctor",
                                       seeMoreOnClick: () {
                                       Get.toNamed(Routes.popularDoctorsPage);
                                       },
                                     ),
                                     PopularDoctorsList(
                                         popularDoctorsList: state.dto.popularDoctorsList
                                     ),
                                     Padding(
                                         padding: EdgeInsets.only(top: 31.h),
                                         child: DoctorTitle(
                                           title: "Feature Doctor",
                                           seeMoreOnClick: () {

                                           },
                                         )
                                     ),
                                     FeaturedDoctorsList(
                                         featuredDoctorsList: state.dto.featuredDoctorsList,
                                       itemOnClick: (int index) {

                                       },
                                     ),
                                     SizedBox(height: 100.h)
                                   ],
                                 )
                               ],
                             )
                         )
                       ],
                     ),
                     SearchCard(
                       onClick: (){
                         Get.toNamed(Routes.findDoctorsPage);
                       },
                     )
                   ],
                 )
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