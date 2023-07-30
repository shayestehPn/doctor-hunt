
class DoctorPopularModel{

  String name="";
  String id="";
  String medicalCategory="";
  double score=0.0;
  String imageUrl="";
  int numberOfViews=0;
  bool isLikedByUser=false;

  DoctorPopularModel({
    required this.id,
    required this.name,
    required this.imageUrl,
    required this.score,
    required this.medicalCategory,
    required this.numberOfViews,
    required this.isLikedByUser
  });

  DoctorPopularModel.empty(){
    name="";
    id="";
    medicalCategory="";
    score=0.0;
    imageUrl="";
    numberOfViews=0;
    isLikedByUser=false;
  }

}