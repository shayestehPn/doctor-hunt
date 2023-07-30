class DoctorModelForSelectTime{
   String name="";
   String imageUrl="";
   String officeAddress="";
   double score=0.0;
   bool isLikedByUser=false;

  DoctorModelForSelectTime({
    required this.name,
    required this.officeAddress,
    required this.imageUrl,
    required this.score,
    required this.isLikedByUser
  });

   DoctorModelForSelectTime.empty(){
     name="";
     imageUrl="";
     officeAddress="";
     score=0.0;
     isLikedByUser=false;
   }
}