class DoctorModelForSelectTime{
   String name;
   String imageUrl;
   String officeAddress;
   double score;
   bool isLikedByUser;

  DoctorModelForSelectTime({
    required this.name,
    required this.officeAddress,
    required this.imageUrl,
    required this.score,
    required this.isLikedByUser
  });
}