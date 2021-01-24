import 'package:intl/intl.dart';

String convertDateFromString(String strDate){
  DateTime _dateconvert = DateTime.parse(strDate);
  return DateFormat('dd-MM-yyyy').format(_dateconvert).toString();
}
