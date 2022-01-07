import 'package:flutter/material.dart';
import 'package:clima/services/location.dart';
import 'package:http/http.dart';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  @override
  void initState() {
    super.initState();

    getLocation();
  }

  void getLocation() async {
    Location location = Location();
    await location.getCurrentLocation();

    print(location.longitude);
    print(location.latitude);
  }

  void getData() async {
    Response response = await get(
        'api.openweathermap.org/data/2.5/weather?lat=35&lon=139&appid=8a9213b7ef3a6cec818866b764d2869b');
    print(response);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
