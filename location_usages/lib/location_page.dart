import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';


class LocationPage extends StatefulWidget {
  const LocationPage({Key? key}) : super(key: key);

  @override
  State<LocationPage> createState() => _LocationPageState();
}

class _LocationPageState extends State<LocationPage> {
  double enlem = 0.0;
  double boylam = 0.0;
  Future<void> konumBilgisiAl() async{
    var konum = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
    setState(() {
      enlem = konum.latitude;
      boylam = konum.longitude;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Location")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text("Enlem  : $enlem"),
            Text("Boylam : $boylam"),
            ElevatedButton(onPressed: () {
              konumBilgisiAl();
            }, child: Text("Konum al")),
          ],
        ),
      ),
    );
  }
}
