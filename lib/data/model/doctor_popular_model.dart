
class DoctorPopularModel{

  String name;
  String id;
  String medicalCategory;
  double score;
  String imageUrl;
  int numberOfViews;
  bool isLikedByUser;

  DoctorPopularModel({
    required this.id,
    required this.name,
    required this.imageUrl,
    required this.score,
    required this.medicalCategory,
    required this.numberOfViews,
    required this.isLikedByUser
  });

}