import 'package:doctor_hunt/data/model/date_model.dart';
import 'package:doctor_hunt/data/model/time_model.dart';

class DateForBooking{

  late DateModel date;
  late List<TimeModel> timeSlotsList;

  DateForBooking({required this.date,required this.timeSlotsList});

}