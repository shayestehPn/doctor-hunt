import 'package:doctor_hunt/business_logic/on_branding/on_branding_cubit.dart';
import 'package:doctor_hunt/presentation/components/custom_solid_green_button.dart';
import 'package:doctor_hunt/presentation/components/images/png_images.dart';
import 'package:doctor_hunt/presentation/pages/on_branding_first.dart';
import 'package:doctor_hunt/presentation/pages/on_branding_second.dart';
import 'package:doctor_hunt/presentation/pages/on_branding_third.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../business_logic/on_branding/on_branding_state.dart';
import '../../routing/routes.dart';
import '../components/custom_transparent_button.dart';


class OnBrandingPage extends StatelessWidget {

  OnBrandingPage({Key? key}) : super(key: key);

  PageController controller = PageController( keepPage: true);

  List pageViewItems = [
    const OnBrandingFirst(),
    const OnBrandingSecond(),
    const OnBrandingThird()
  ];


  @override
  Widget build(BuildContext context) {
    return BlocProvider<OnBrandingCubit>(
      create: (context) {
        final cubit = OnBrandingCubit();
        cubit.increasePageNumber();
        return cubit;
      },
      child: BlocBuilder<OnBrandingCubit, OnBrandingState>(
        builder: (BuildContext context, state) {
          return Scaffold(
            body:  Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Container(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.white,
                ),
                PageView.builder(
                    itemCount: pageViewItems.length,
                    scrollDirection: Axis.horizontal,
                    physics: const NeverScrollableScrollPhysics(),

                    controller: controller,
                    itemBuilder: (context, position) {
                      return pageViewItems[position];
                    }
                ),
                Stack(
                  alignment: Alignment.center,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width,
                      height: 134.h,
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        CustomSolidGreenButton(
                          height: 54.h,
                          width: 295.w,
                          onClick: (){
                            Get.toNamed(Routes.homeScreen);
                          },
                          text: "Get started",
                        ),
                        CustomTransparentButton(
                            height: 54.h,
                            width: 295.w,
                            text: "skip",
                            onClick: (){
                              goToNext(context,state);
                            }
                        ),
                        SizedBox(height: 43.h,)
                      ],
                    ),
                    Positioned(
                      bottom: -10.h,
                      right: -20.w,
                      child: SizedBox(
                        height: 116.w,
                        width: 116.w,
                        child: PngImage.greenBlurPng,
                      ),
                    )
                  ],
                )
              ],
            ),
          );
        },
      ),
    );
  }

  void goToNext(BuildContext context,OnBrandingState state){
    context.read<OnBrandingCubit>().increasePageNumber();
    if(state.currentPageValue>=pageViewItems.length){
      Get.toNamed(Routes.homeScreen);
    }
    else{
      controller.animateToPage(
        state.currentPageValue,
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeInOut,
      );
    }
  }
}
