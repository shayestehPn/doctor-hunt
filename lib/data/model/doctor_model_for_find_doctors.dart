
import 'package:doctor_hunt/data/model/date_model.dart';

class DoctorModelForFindDoctors{

   String name;
   String id="0";
   String medicalCategory;
   String yearsOfExperience;
   double satisfyPercent;
   int numberOfPreviousPatients;
   String imageUrl;
   DateModel nextAvailableDate;
   String nextAvailableTime;
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


}