import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';


class MapPage extends StatefulWidget {
  const MapPage({Key? key}) : super(key: key);

  @override
  State<MapPage> createState() => _MapPageState();
}

class _MapPageState extends State<MapPage> {
  var baslangicKonum = CameraPosition(target: LatLng(37.9243951,29.0397533),zoom: 13);
  Completer<GoogleMapController> haritaKontrol = Completer();

  Future<void> konumaGit() async{
    GoogleMapController controller = await haritaKontrol.future;
    var gidilecekKonum = CameraPosition(target: LatLng(41.0156722,28.9547755),zoom: 15);
    controller.animateCamera(CameraUpdate.newCameraPosition(gidilecekKonum));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Harita"),),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          konumaGit();

       },
        child: Icon(Icons.location_searching_outlined,color: Colors.blue,),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              width: 300,
              height: 300,
              child: GoogleMap(
                initialCameraPosition: baslangicKonum,
                mapType: MapType.normal,
                onMapCreated: (GoogleMapController controller){
                  haritaKontrol.complete(controller);
                },

              ),
            ),

          ],
        ),
      ),
    );
  }
}
