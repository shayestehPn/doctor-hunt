import '../../constants/strings.dart';
import '../model/doctor_popular_model.dart';

class PopularDoctorsDto{

  String error="";
  List<DoctorPopularModel> popularDoctorsList=[];

  PopularDoctorsDto({
    required this.popularDoctorsList,
  });


  PopularDoctorsDto.status(int status){
    if(status==401){
      error=AppStrings.userNotFoundError;
    }
    else if(status==403 || status==404){
      error=AppStrings.serverError;
    }
  }


  PopularDoctorsDto.error(this.error);



// factory PopularDoctorsDto.fromJson(Map<dynamic, dynamic> json) {
//
//   return PopularDoctorsDto();
// }


}