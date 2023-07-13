import 'dart:async';
import 'package:doctor_hunt/business_logic/splash_screen/splash_cubit.dart';
import 'package:doctor_hunt/presentation/components/images/png_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../business_logic/splash_screen/splash_state.dart';
import '../../routing/routes.dart';
import '../components/images/svg_images.dart';


class SplashScreen extends StatelessWidget {

  SplashCubit homeCubit=SplashCubit();
  late Timer myTimer;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider<SplashCubit>(
        create: (context) {
          final cubit = SplashCubit();
          myTimer=Timer.periodic(const Duration(seconds: 2), (timer) {
           Get.toNamed(Routes.onBrandingPage);
           myTimer.cancel();
           //call api
          });
          return cubit;
        },
        child: BlocConsumer<SplashCubit, SplashState>(
          listener: (context, state) {
            if (state is Failure){
              Navigator.pop(context);
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  backgroundColor: Colors.green,
                  content: Text(state.error),
                ),
              );
            }
          },
          builder: (context, homeState) {
            return Scaffold(
                body: Container(
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width,
                    color: Colors.white,
                    child: Stack(
                      alignment: Alignment.topLeft,
                      children: [
                        Container(
                          height: MediaQuery.of(context).size.height,
                          width: MediaQuery.of(context).size.width,
                          color: Colors.white,
                        ),
                        Positioned(
                          top: 0,
                          left: -20.w,
                          child: SizedBox(
                            height: 216.w,
                            width: 216.w,
                            child: PngImage.blueBlurPng,
                          ),
                        ),
                        Positioned(
                          right: 0,
                          bottom: -10.h,
                          child: SizedBox(
                            height: 216.w,
                            width: 216.w,
                            child: PngImage.greenBlurPng,
                          ),
                        ),
                        Center(
                          child:SvgImage.logoSplashSvg,
                        )
                      ],
                    )
                )
            );
          },
        ),
      ),
    );
  }
}
