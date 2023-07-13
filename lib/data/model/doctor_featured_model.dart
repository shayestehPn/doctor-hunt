class DoctorFeaturedModel{

  String name;
  int score;
  String imageUrl;
  String priceEveryHour;
  bool isLikedByUser;

  DoctorFeaturedModel({
    required this.name,
    required this.imageUrl,
    required this.score,
    required this.priceEveryHour,
    required this.isLikedByUser
  });

}