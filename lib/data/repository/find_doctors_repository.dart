import 'package:doctor_hunt/data/model/doctor_model_for_find_doctors.dart';
import '../dto/find_doctors_dto.dart';
import '../model/date_model.dart';

class FindDoctorsRepository{

  getData(){

    List<DoctorModelForFindDoctors> doctorsList=[];
    doctorsList.add(
      DoctorModelForFindDoctors(
          id: "59",
          name: "Ali Mokhberi",
          imageUrl: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRDiM_msalsv7aSV1eMDo5UiftcSmblH0SJbFZupmNTMcr9jjc9AeWTg74ZDcz3jexTCoc&usqp=CAU",
          medicalCategory: "dentist specialist",
          numberOfPreviousPatients: 89,
          yearsOfExperience: "6",
          satisfyPercent: 89,
          nextAvailableDate: DateModel(id:"8",year: '2023', month: 'March', day: '23'),
          nextAvailableTime: "1:24 PM",
          isLikedByUser: true
      ),
    );

    doctorsList.add(
      DoctorModelForFindDoctors(
          id: "9",
          name: "Nadia Rezayi",
          imageUrl: "https://doctorsclinichouston.com/wp-content/uploads/2014/10/slider-1.1.png",
          medicalCategory: "child specialist",
          numberOfPreviousPatients: 700,
          yearsOfExperience: "9",
          satisfyPercent: 79,
          nextAvailableDate: DateModel(id:"0",year: '2023', month: 'May', day: '7'),
          nextAvailableTime: "3:20 PM",
          isLikedByUser: true
      ),
    );

    doctorsList.add(
      DoctorModelForFindDoctors(
          id: "90",
          name: "Raze hoseini",
          imageUrl: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQcvPCBngJxMFQvJugVSdrp26-EZQkTlWAZdhXLTa4tWSQWHjBhpihV3leeG8M-VZbi8iA&usqp=CAU",
          medicalCategory: "dentist specialist",
          numberOfPreviousPatients: 69,
          yearsOfExperience: "1",
          satisfyPercent: 60,
          nextAvailableDate: DateModel(id:"9",year: '2023', month: 'July', day: '20'),
          nextAvailableTime: "9:24 AM",
          isLikedByUser: false
      ),
    );


    return FindDoctorsDto(doctorsList: doctorsList,searchedDoctorsList: []);
  }

}