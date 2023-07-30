
import '../../constants/strings.dart';
import '../model/doctor_live_model.dart';
import '../model/doctor_model.dart';
import '../model/doctor_popular_model.dart';

class HomeDto{

  String error="";
  String userName="";
  String userImageUrl="";
  List<DoctorLiveModel> liveDoctorsList=[];
  List<DoctorPopularModel> popularDoctorsList=[];
  List<DoctorModel> featuredDoctorsList=[];

  HomeDto({
    required this.userName,
    required this.userImageUrl,
    required this.liveDoctorsList,
    required this.popularDoctorsList,
    required this.featuredDoctorsList
});


  HomeDto.status(int status){
    if(status==401){
      error=AppStrings.userNotFoundError;
    }
    else if(status==403 || status==404){
      error=AppStrings.serverError;
    }
  }


  HomeDto.error(this.error);



  // factory HomeDto.fromJson(Map<dynamic, dynamic> json) {
  //
  //   return HomeDto();
  // }


}