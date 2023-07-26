import 'package:get/get.dart';
import 'package:get/get_instance/src/bindings_interface.dart';
import '../data/repository/find_doctors_repository.dart';
import '../data/repository/home_repository.dart';
import '../data/repository/select_time_repositoy.dart';
import '../data/repository/splash_repository.dart';


class BindingClass implements Bindings {

  @override
  void dependencies() {

    Get.lazyPut<SplashRepository>(() => SplashRepository(),fenix: true);

    Get.lazyPut<HomeRepository>(() => HomeRepository(),fenix: true);

    Get.lazyPut<FindDoctorsRepository>(() => FindDoctorsRepository(),fenix: true);

    Get.lazyPut<SelectTimeRepository>(() => SelectTimeRepository(),fenix: true);

  }
}
