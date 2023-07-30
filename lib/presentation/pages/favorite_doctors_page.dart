import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../business_logic/favorite_doctors/favorite_doctors_cubit.dart';
import '../../business_logic/favorite_doctors/favorite_doctors_state.dart';
import '../components/home_screen/doctor_title.dart';
import '../components/home_screen/featured_doctors_list.dart';
import '../components/loading_dilaog.dart';
import '../components/stack_with_blurs.dart';

class FavoriteDoctorsPage extends StatelessWidget {
  const FavoriteDoctorsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider<FavoriteDoctorsCubit>(
        create: (context) {
          final cubit = FavoriteDoctorsCubit();
          cubit.getData();
          return cubit;
        },
        child: BlocConsumer<FavoriteDoctorsCubit, FavoriteDoctorsState>(
          listener: (context, state) {
            if (state is Failure) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  backgroundColor: Colors.green,
                  content: Text(state.error),
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
                          Expanded(
                              child: ListView(
                                padding: const EdgeInsets.all(0),
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                          padding: EdgeInsets.only(top: 31.h),
                                          child: DoctorTitle(
                                            title: "Feature Doctor",
                                            seeMoreOnClick: () {

                                            },
                                          )
                                      ),
                                      FeaturedDoctorsList(featuredDoctorsList: state.dto.featuredDoctorsList),
                                      SizedBox(height: 100.h)
                                    ],
                                  )
                                ],
                              )
                          )
                        ],
                      ),
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
