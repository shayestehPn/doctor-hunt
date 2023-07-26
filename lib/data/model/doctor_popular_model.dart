
class DoctorPopularModel{

  String name;
  String id;
  String medicalCategory;
  double score;
  String imageUrl;
  int numberOfViews;

  DoctorPopularModel({
    required this.id,
    required this.name,
    required this.imageUrl,
    required this.score,
    required this.medicalCategory,
    required this.numberOfViews
  });

}