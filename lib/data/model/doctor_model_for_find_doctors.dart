
import 'package:doctor_hunt/data/model/date_model.dart';

class DoctorModelForFindDoctors{

   String name="";
   String id="";
   String medicalCategory="";
   String yearsOfExperience="";
   double satisfyPercent=0.0;
   int numberOfPreviousPatients=0;
   String imageUrl="";
   DateModel nextAvailableDate=DateModel.empty();
   String nextAvailableTime="";
   bool isLikedByUser=false;

  DoctorModelForFindDoctors({
    required this.id,
    required this.name,
    required this.imageUrl,
    required this.medicalCategory,
    required this.numberOfPreviousPatients,
    required this.yearsOfExperience,
    required this.satisfyPercent,
    required this.nextAvailableDate,
    required this.nextAvailableTime,
    required this.isLikedByUser
  });

  DoctorModelForFindDoctors.empty(){
     name="";
     id="";
     medicalCategory="";
     yearsOfExperience="";
     satisfyPercent=0.0;
     numberOfPreviousPatients=0;
     imageUrl="";
     nextAvailableDate=DateModel.empty();
     nextAvailableTime="";
     isLikedByUser=false;
  }


}