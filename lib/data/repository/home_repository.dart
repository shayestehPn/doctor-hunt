import 'package:doctor_hunt/data/dto/home_dto.dart';
import '../model/doctor_model.dart';

class HomeRepository{

  getData(){
    
    List<DoctorModel> liveDoctorsList=[];
    liveDoctorsList.add(DoctorModel.live(id: "0", imageUrl: "https://www.eatthis.com/wp-content/uploads/sites/4/2022/02/doctor-male-mature.jpg?quality=82&strip=1"));
    liveDoctorsList.add(DoctorModel.live(id: "1", imageUrl: "https://media.istockphoto.com/id/138205019/photo/happy-healthcare-practitioner.jpg?s=612x612&w=0&k=20&c=b8kUyVtmZeW8MeLHcDsJfqqF0XiFBjq6tgBQZC7G0f0="));
    liveDoctorsList.add(DoctorModel.live(id: "2", imageUrl: "https://familydoctor.org/wp-content/uploads/2018/02/41808433_l.jpg"));
    liveDoctorsList.add(DoctorModel.live(id: "3", imageUrl: "https://media.cnn.com/api/v1/images/stellar/prod/230217092727-02-us-black-doctors-shortage.jpg?c=16x9&q=h_720,w_1280,c_fill"));


    List<DoctorModel>popularDoctorsList=[];
    popularDoctorsList.add(DoctorModel.popular(
        id: "82",
        name:  "Samin Hakimi",
        imageUrl: "https://doctorsns.com/sites/default/files/styles/manual_teaser_squareish_large/public/2023-06/news/halifaxrealestatephotography_0.jpg?itok=pj24tfDy",
        score: 2.8,
        medicalCategory: "dentist specialist",
        numberOfViews: 0,
        isLikedByUser: true
    )
    );
    popularDoctorsList.add(DoctorModel.popular(
        id: "56",
        name:  "Ali Hasani",
        imageUrl: "https://yt3.googleusercontent.com/ytc/AGIKgqPmK1ByzeeLa49q6DJoTKm0_2kTHVXaIpaV25FSYw=s900-c-k-c0x00ffffff-no-rj",
        score: 3.1,
        medicalCategory: "heart specialist",
        numberOfViews: 0,
        isLikedByUser: true)
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

    return HomeDto(
        userName: 'Shayesteh Parvin Nejad',
        userImageUrl: 'https://www.tasvirezendegi.com/'
            'wp-content/uploads/2021/01/best-profile-picture-for-girl-25.jpg',
        liveDoctorsList: liveDoctorsList,
        popularDoctorsList: popularDoctorsList,
        featuredDoctorsList: featuredDoctorsList
    );
  }

}