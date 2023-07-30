class DoctorFavoriteModel{

  String id="";
  String name="";
  String imageUrl="";
  String medicalCategory="";

  DoctorFavoriteModel({
    required this.id,
    required this.name,
    required this.imageUrl,
    required this.medicalCategory
  });

  DoctorFavoriteModel.empty(){
    id="";
    name="";
    imageUrl="";
    medicalCategory="";
  }


}
