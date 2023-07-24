class DoctorModelForSelectTime{
  late String name;
  late String imageUrl;
  late String officeAddress;
  late double score;
  late bool isLikedByUser;

  DoctorModelForSelectTime({
    required this.name,
    required this.officeAddress,
    required this.imageUrl,
    required this.score,
    required this.isLikedByUser
  });
}