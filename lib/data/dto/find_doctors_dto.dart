import '../../constants/strings.dart';
import '../model/doctor_model_for_find_doctors.dart';

class FindDoctorsDto{

  String error="";
  List<DoctorModelForFindDoctors> doctorsList=[];


  FindDoctorsDto({required this.doctorsList});


  FindDoctorsDto.status(int status){
    if(status==401){
      error=AppStrings.userNotFoundError;
    }
    else if(status==403 || status==404){
      error=AppStrings.serverError;
    }
  }


  FindDoctorsDto.error(this.error);



// factory FindDoctorsDto.fromJson(Map<dynamic, dynamic> json) {
//
//   return FindDoctorsDto();
// }


}