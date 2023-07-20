
import 'package:doctor_hunt/data/model/date_model.dart';

class DoctorModelForFindDoctors{

  late String name;
  late String medicalCategory;
  late String yearsOfExperience;
  late double satisfyPercent;
  late int numberOfPreviousPatients;
  late String imageUrl;
  late DateModel nextAvailableDate;
  late String nextAvailableTime;
  late bool isLikedByUser=false;

  DoctorModelForFindDoctors({
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