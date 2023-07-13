import 'package:get/get.dart';
import 'package:get/get_instance/src/bindings_interface.dart';
import 'data/repository/home_repository.dart';
import 'data/repository/splash_repository.dart';


class BindingClass implements Bindings {

  @override
  void dependencies() {

    Get.lazyPut<SplashRepository>(() => SplashRepository(),fenix: true);

    Get.lazyPut<HomeRepository>(() => HomeRepository(),fenix: true);

  }
}
