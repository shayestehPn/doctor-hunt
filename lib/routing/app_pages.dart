
import 'package:doctor_hunt/presentation/components/loading_dilaog.dart';
import 'package:doctor_hunt/presentation/pages/find_doctors_page.dart';
import 'package:doctor_hunt/presentation/pages/home_screen.dart';
import 'package:doctor_hunt/presentation/pages/main_page.dart';
import 'package:doctor_hunt/presentation/pages/on_branding_page.dart';
import 'package:doctor_hunt/presentation/pages/popular_doctors_page.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart';
import '../presentation/pages/select_time_page.dart';
import '../presentation/pages/splash_screen.dart';
import '../utils/binding.dart';
import 'routes.dart';

final appPages = [

  GetPage(
    name: Routes.splashScreen,
    page: () => SplashScreen(),
    binding: BindingClass()
  ),

  GetPage(
      name: Routes.onBrandingPage,
      page: () => OnBrandingPage(),
  ),

  GetPage(
    name: Routes.loadingDialog,
    page: () => const LoadingDialog(),
    fullscreenDialog: true,
    transition: Transition.fade,
  ),

  GetPage(
    name: Routes.mainPage,
    page: () =>  MainPage(),
  ),

  GetPage(
    name: Routes.findDoctorsPage,
    page: () =>   FindDoctorsPage(),
      binding: BindingClass()
  ),

  GetPage(
      name: Routes.selectTimePage,
      page: () =>   const SelectTimePage(),
      binding: BindingClass()
  ),

  GetPage(
      name: Routes.popularDoctorsPage,
      page: () =>   const PopularDoctorsPage(),
      binding: BindingClass()
  ),


];