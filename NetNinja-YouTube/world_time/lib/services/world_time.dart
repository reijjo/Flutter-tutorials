import 'package:http/http.dart';
import 'dart:convert';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:intl/intl.dart';

class WorldTime {
  String location; // Location name for the UI
  late String time; // Time in that location
  String flag; // Url to an asset flag icon
  String url; // Location url for api endpoint
  late bool isDaytime; // True or false if daytime or not

  WorldTime({
    required this.location,
    required this.flag,
    required this.url,
  });

  Future<void> getTime() async {
    String apiKey = dotenv.env['ABSTRACTAPI_APIKEY'] ?? 'ApiKey not found';

    try {
      // Make the request
      Response response = await get(Uri.parse(
          'https://timezone.abstractapi.com/v1/current_time/?api_key=$apiKey&location=$url'));
      Map data = jsonDecode(response.body);
      // Get properties from data
      String datetime = data['datetime'];
      int offset = data['gmt_offset'];

      // Create DateTime object
      DateTime now = DateTime.parse(datetime);
      now = now.add(Duration(hours: offset));

      // Set the time property & isDayTime
      isDaytime = now.hour > 6 && now.hour < 20 ? true : false;
      time = DateFormat.jm().format(now);
    } catch (error) {
      print('Caught error: $error');
      time = 'Could not get time data.';
    }
  }
}
