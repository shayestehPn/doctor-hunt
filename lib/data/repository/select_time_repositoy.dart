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
            date: DateModel(id: '0', year: '2023', month: 'March', day: '20') ,
            timeSlotsList: [
              TimeModel(id: "9", time: "7:34", type: "AM")
            ]
        )
    );
    availableDatesList.add(
        DateModelForBooking(
            date: DateModel(id: '0', year: '2023', month: 'March', day: '21') ,
            timeSlotsList: []
        )
    );
    availableDatesList.add(
        DateModelForBooking(
            date: DateModel(id: '0', year: '2023', month: 'March', day: '22') ,
            timeSlotsList: [
              TimeModel(id: "9", time: "6:23", type: "PM"),
              TimeModel(id: "10", time: "6:50", type: "PM"),
              TimeModel(id: "11", time: "7:30", type: "PM"),
              TimeModel(id: "12", time: "7:53", type: "AM"),
              TimeModel(id: "13", time: "8:50", type: "PM"),
              TimeModel(id: "14", time: "9:30", type: "PM"),
            ]
        )
    );
    availableDatesList.add(
        DateModelForBooking(
            date: DateModel(id: '0', year: '2023', month: 'March', day: '23') ,
            timeSlotsList: [
              TimeModel(id: "9", time: "6:23", type: "AM"),
              TimeModel(id: "0", time: "6:50", type: "PM"),
              TimeModel(id: "0", time: "7:30", type: "PM"),
            ]
        )
    );

    availableDatesList.add(
        DateModelForBooking(
            date: DateModel(id: '60', year: '2023', month: 'March', day: '24') ,
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
        nextAvailabilityDate: DateModel(id: '', year: '', month: '', day: ''),
      clinicPhoneNumber: "04132834290",
        nextAvailabilityDateIndex: 0

    );
  }

}