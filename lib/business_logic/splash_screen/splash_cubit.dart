import 'package:doctor_hunt/business_logic/splash_screen/splash_state.dart';
import 'package:get/get.dart';
import '../../data/repository/splash_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class SplashCubit extends Cubit<SplashState> {

  final SplashRepository myRepository=Get.find();

  SplashCubit() : super(const Initial());



}