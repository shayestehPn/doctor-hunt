import 'package:doctor_hunt/presentation/components/app_bar_with_back_and_magnifier.dart';
import 'package:doctor_hunt/presentation/components/popular_doctors_page/popular_doctors_list_on_popular_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../business_logic/popular_doctors/popular_doctors_cubit.dart';
import '../../business_logic/popular_doctors/popular_doctors_state.dart';
import '../../routing/routes.dart';
import '../components/loading_dilaog.dart';
import '../components/stack_with_blurs.dart';

class PopularDoctorsPage extends StatelessWidget {
  const PopularDoctorsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider<PopularDoctorsCubit>(
        create: (context) {
          final cubit = PopularDoctorsCubit();
          cubit.getData();
          return cubit;
        },
        child: BlocConsumer<PopularDoctorsCubit, PopularDoctorsState>(
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
              return StackWithBlurs(
                  showBlueBlur: true,
                  showGreenBlur: true,
                  pageContent: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AppBarWithBackAndMagnifier(
                        backOnClick: () {
                          Get.back();
                        },
                        title: '',
                        showMagnifier: true,
                        magnifierOnClick: (){
                          Get.toNamed(Routes.findDoctorsPage);
                        },
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 19.w,top: 30.h),
                        child: Text("Popular Doctors",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              fontSize: 18.sp,
                              fontWeight: FontWeight.w500,
                              color: Colors.black
                          ),
                        ),
                      ),
                      Expanded(
                        child: ListView(
                          shrinkWrap: true,
                          children: [
                            PopularDoctorsListOnPopularPage(doctorsList: state.dto.popularDoctorsList)
                          ],
                        ),
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
