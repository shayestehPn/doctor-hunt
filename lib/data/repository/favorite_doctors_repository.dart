
import '../dto/favorite_doctors_dto.dart';
import '../model/doctor_model.dart';


class FavoriteDoctorsRepository{

  getData(){

    List<DoctorModel> allDoctorsList=[];
    allDoctorsList.add(
      DoctorModel.favorite(
          id: "59",
          name: "Ali Mokhberi",
          imageUrl: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRDiM_msalsv7aSV1eMDo5UiftcSmblH0SJbFZupmNTMcr9jjc9AeWTg74ZDcz3jexTCoc&usqp=CAU",
          medicalCategory: "dentist specialist",
      ),
    );

    allDoctorsList.add(
      DoctorModel.favorite(
          id: "9",
          name: "Nadia Rezayi",
          imageUrl: "https://doctorsclinichouston.com/wp-content/uploads/2014/10/slider-1.1.png",
          medicalCategory: "child specialist",
      ),
    );

    allDoctorsList.add(
      DoctorModel.favorite(
          id: "90",
          name: "Raze hoseini",
          imageUrl: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQcvPCBngJxMFQvJugVSdrp26-EZQkTlWAZdhXLTa4tWSQWHjBhpihV3leeG8M-VZbi8iA&usqp=CAU",
          medicalCategory: "dentist specialist",
      ),
    );

    List<DoctorModel> featuredDoctorsList=[];

    featuredDoctorsList.add(DoctorModel.featured(
        id: "43",
        name: "Amin Bakhshi",
        imageUrl: "https://victoria.mediaplanet.com/app/uploads/sites/103/2019/12/MainImage_A1-1-576x486.jpg",
        score: 3.7,
        priceEveryHour: "22.5",
        isLikedByUser: true,
        medicalCategory: 'eye specialist')
    );
    featuredDoctorsList.add(DoctorModel.featured(
        id: "78",
        name: "Fateme Hanife",
        imageUrl: "https://ahahealthtech.org/wp-content/uploads/2018/06/AnnMarieNavar.jpg",
        score: 5.6,
        priceEveryHour: "50.5",
        isLikedByUser: false,
        medicalCategory: 'eye specialist')
    );



    return FavoriteDoctorsDto(
        allDoctorsList: allDoctorsList,
        searchedDoctorsList: [],
        featuredDoctorsList: featuredDoctorsList
    );
  }

}