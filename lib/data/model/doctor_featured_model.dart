class DoctorFeaturedModel{

  String name="";
  double score=0.0;
  String imageUrl="";
  String id="";
  String priceEveryHour="";
  bool isLikedByUser=false;

  DoctorFeaturedModel({
    required this.id,
    required this.name,
    required this.imageUrl,
    required this.score,
    required this.priceEveryHour,
    required this.isLikedByUser
  });

  DoctorFeaturedModel.empty(){
    name="";
    score=0.0;
    imageUrl="";
    id="";
    priceEveryHour="";
    isLikedByUser=false;
  }

}