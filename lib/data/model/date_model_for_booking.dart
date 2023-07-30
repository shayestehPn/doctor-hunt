import 'package:doctor_hunt/data/model/date_model.dart';
import 'package:doctor_hunt/data/model/time_model.dart';

class DateModelForBooking{

   DateModel date=DateModel.empty();
   List<TimeModel> timeSlotsList=[];

  DateModelForBooking({required this.date,required this.timeSlotsList});

  DateModelForBooking.empty(){
     date=DateModel.empty();
     timeSlotsList=[];
  }

}