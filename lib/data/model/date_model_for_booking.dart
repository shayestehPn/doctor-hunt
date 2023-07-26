import 'package:doctor_hunt/data/model/date_model.dart';
import 'package:doctor_hunt/data/model/time_model.dart';

class DateModelForBooking{

   DateModel date;
   List<TimeModel> timeSlotsList;

  DateModelForBooking({required this.date,required this.timeSlotsList});

}