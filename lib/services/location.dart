import 'package:geolocator/geolocator.dart';

class Location{

  double longitude;
  double latitute;

  Future<void>  getCurrentLocation() async{
    try {
      Position position = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.low);
      latitute = position.latitude;
      longitude = position.longitude;

    } catch(e){
      print(e);
    }
  }

}