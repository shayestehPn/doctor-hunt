class DoctorFeaturedModel{

  String name;
  double score;
  String imageUrl;
  String id;
  String priceEveryHour;
  bool isLikedByUser;

  DoctorFeaturedModel({
    required this.id,
    required this.name,
    required this.imageUrl,
    required this.score,
    required this.priceEveryHour,
    required this.isLikedByUser
  });

}