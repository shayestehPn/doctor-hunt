import 'date_model.dart';

class DoctorModel{
  String id="";
  String name="";
  String imageUrl="";
  String medicalCategory="";
  double score=0.0;
  String priceEveryHour="";
  bool isLikedByUser=false;
  String yearsOfExperience="";
  double satisfyPercent=0.0;
  int numberOfPreviousPatients=0;
  DateModel nextAvailableDate=DateModel.empty();
  String nextAvailableTime="";
  String officeAddress="";
  int numberOfViews=0;

  DoctorModel.favorite({
    required this.id,
    required this.name,
    required this.imageUrl,
    required this.medicalCategory
  });

  DoctorModel.featured({
    required this.id,
    required this.name,
    required this.imageUrl,
    required this.score,
    required this.priceEveryHour,
    required this.isLikedByUser,
    required this.medicalCategory
  });

  DoctorModel.live({
    required this.id,
    required this.imageUrl,
  });

  DoctorModel.findDoctors({
    required this.id,
    required this.imageUrl,
    required this.name,
    required this.medicalCategory,
    required this.yearsOfExperience,
    required this.satisfyPercent,
    required this.numberOfPreviousPatients,
    required this.nextAvailableDate,
    required this.nextAvailableTime,
    required this.isLikedByUser
  });

  DoctorModel.selectTime({
    required this.id,
    required this.imageUrl,
    required this.name,
    required this.officeAddress,
    required this.isLikedByUser,
    required this.score
  });

  DoctorModel.popular({
    required this.id,
    required this.imageUrl,
    required this.name,
    required this.medicalCategory,
    required this.score,
    required this.numberOfViews,
    required this.isLikedByUser
  });

  DoctorModel.empty(){
    id="";
    name="";
    imageUrl="";
    medicalCategory="";
    score=0.0;
    priceEveryHour="";
    isLikedByUser=false;
    yearsOfExperience="";
    satisfyPercent=0.0;
    numberOfPreviousPatients=0;
    nextAvailableDate=DateModel.empty();
    nextAvailableTime="";
    officeAddress="";
    numberOfViews=0;
  }



}

