import '../dto/popular_doctors_dto.dart';
import '../model/doctor_popular_model.dart';

class PopularDoctorsRepository{

  getData(){


    List<DoctorPopularModel>popularDoctorsList=[];
    popularDoctorsList.add(DoctorPopularModel(
        id: "82",
        name:  "Samin Hakimi",
        imageUrl: "https://doctorsns.com/sites/default/files/styles/manual_teaser_squareish_large/public/2023-06/news/halifaxrealestatephotography_0.jpg?itok=pj24tfDy",
        score: 2.8,
        medicalCategory: "dentist specialist",
        numberOfViews: 2000,
        isLikedByUser: false
    )
    );
    popularDoctorsList.add(DoctorPopularModel(
        id: "56",
        name:  "Ali Hasani",
        imageUrl: "https://yt3.googleusercontent.com/ytc/AGIKgqPmK1ByzeeLa49q6DJoTKm0_2kTHVXaIpaV25FSYw=s900-c-k-c0x00ffffff-no-rj",
        score: 3.1,
        medicalCategory: "heart specialist",
        numberOfViews: 326,
        isLikedByUser: true)
    );
    popularDoctorsList.add(DoctorPopularModel(
        id: "89",
        name:  "Mahdi Koohi",
        imageUrl: "https://familydoctor.org/wp-content/uploads/2018/02/41808433_l-705x470.jpg",
        score: 4.9,
        medicalCategory: "child specialist",
        numberOfViews: 2789,
        isLikedByUser: true)
    );
    popularDoctorsList.add(DoctorPopularModel(
        id: "80",
        name:  "Aysan Jahani",
        imageUrl: "https://cdn-prod.medicalnewstoday.com/content/images/articles/314/314912/portrait-of-female-physician.jpg",
        score: 3.9,
        medicalCategory: "child specialist",
        numberOfViews: 278,
        isLikedByUser: false)
    );


    return PopularDoctorsDto(
        popularDoctorsList: popularDoctorsList,
    );
  }

}