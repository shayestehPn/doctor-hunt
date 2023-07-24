import 'package:doctor_hunt/data/model/date_model_for_booking.dart';
import 'package:doctor_hunt/data/model/date_model.dart';
import 'package:doctor_hunt/data/model/doctor_model_for_select_time.dart';
import 'package:doctor_hunt/data/model/time_model.dart';

import '../dto/select_time_dto.dart';

class SelectTimeRepository{

  getData(){

    List<DateModelForBooking> availableDatesList=[];
    availableDatesList.add(
        DateModelForBooking(
            date: DateModel(id: '0', year: '2023', month: 'March', day: '21') ,
            timeSlotsList: [
              TimeModel(id: "9", time: "7:34", type: "AM")
            ]
        )
    );
    availableDatesList.add(
        DateModelForBooking(
            date: DateModel(id: '0', year: '2023', month: 'May', day: '2') ,
            timeSlotsList: [
              TimeModel(id: "8", time: "6:21", type: "PM")
            ]
        )
    );
    availableDatesList.add(
        DateModelForBooking(
            date: DateModel(id: '0', year: '2023', month: 'June', day: '28') ,
            timeSlotsList: [
              TimeModel(id: "9", time: "8:23", type: "PM"),
              TimeModel(id: "0", time: "9:20", type: "AM"),
              TimeModel(id: "0", time: "7:30", type: "AM"),
            ]
        )
    );

    availableDatesList.add(
        DateModelForBooking(
            date: DateModel(id: '60', year: '2023', month: 'July', day: '9') ,
            timeSlotsList: []
        )
    );

    return SelectTimeDto(
        doctorModel: DoctorModelForSelectTime(
        name: 'shayesteh',
        officeAddress: 'test Address',
        imageUrl: "https://images.theconversation.com/files/304957/original/file-20191203-66986-im7o5.jpg?ixlib=rb-1.1.0&q=45&auto=format&w=1200&h=1200.0&fit=crop",
        score: 3.9,
        isLikedByUser: true
    ),
        availableDatesList: availableDatesList,

    );
  }

}