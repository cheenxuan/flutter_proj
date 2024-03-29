import 'dart:convert';
import 'package:http/http.dart';
import 'package:intl/intl.dart';

class WorldTime {
  String? location;
  String? time;
  String? url;
  String? flag;
  bool isDayTime = false;

  WorldTime({this.location, this.flag, this.url});

  Future<void> getWorldTime() async {
    
    try{
      Response response =
      await get(Uri.parse('https://worldtimeapi.org/api/timezone/$url'));
      Map data = jsonDecode(response.body);

      //get properties from data
      String? dateTime = data['datetime'];
      String? hoursOffset = data['utc_offset']?.substring(1, 3);
      String? minutesOffset = data['utc_offset']?.substring(4, 6);

      

      if (dateTime != null) {
        DateTime now = DateTime.parse(dateTime);

        isDayTime = now.hour > 6 && now.hour < 20 ? true : false;
        
        now = now.add(Duration(
            hours: int.parse(hoursOffset ?? '0'),
            minutes: int.parse(minutesOffset ?? '0')));
        time = DateFormat.jm().format(now);
      }
    }catch(e){
      print('catch error $e');
      time = 'could not get right time.';
    }
    
    
  }
}
