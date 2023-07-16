import '../../constants/strings.dart';

class FindDoctorsDto{

  String error="";


  FindDoctorsDto();


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