import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:http/http.dart';
import 'dart:convert';

class Loading extends StatefulWidget {
  const Loading({super.key});

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  void getTime() async {
    String apiKey = dotenv.env['ABSTRACTAPI_APIKEY'] ?? 'ApiKey not found';

    // Make the request
    Response response = await get(Uri.parse(
        'https://timezone.abstractapi.com/v1/current_time/?api_key=$apiKey&location=Paris'));
    Map data = jsonDecode(response.body);
    // Get properties from data
    String datetime = data['datetime'];
    int offset = data['gmt_offset'];

    // Create DateTime object
    DateTime now = DateTime.parse(datetime);
    now = now.add(Duration(hours: offset));
    print(now);
  }

  // Runs first when the state object is created
  @override
  void initState() {
    super.initState();
    getTime();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Text('loading screen'),
    );
  }
}
