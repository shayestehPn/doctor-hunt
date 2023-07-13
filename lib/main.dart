
import 'package:doctor_hunt/routing/app_pages.dart';
import 'package:doctor_hunt/routing/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'Assistance.dart';

void main() {

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {

  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  ScreenUtilInit(
      designSize: const Size(400, 800),
      builder: ( context,  child) {
        return GetMaterialApp(
          theme: ThemeData(
            fontFamily: Assistance.fontName,
          ),
          initialRoute: Routes.splashScreen,
          debugShowCheckedModeBanner: false,
          getPages: appPages,
        );

      },
    );
  }
}