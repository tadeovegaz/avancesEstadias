import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart' as latLng;
import 'dart:async' show Future;
import 'package:flutter/services.dart' show rootBundle;
import 'dart:convert';
//
import 'package:flutter/services.dart' show rootBundle;
import 'package:geojson/geojson.dart';
import 'package:flutter_map/flutter_map.dart';



class Mapa extends StatefulWidget {

  @override
  _MapaState createState() => _MapaState();
}

class _MapaState extends State<Mapa> {
  var points = <latLng.LatLng>[
      new latLng.LatLng(20.56537637841997,-101.21845722198486),
      new latLng.LatLng(20.574456886572435,-101.21845722198486),
      new latLng.LatLng(20.57706843713587,-101.21596813201904),
      new latLng.LatLng(20.575983644635166,-101.21485233306885),
      new latLng.LatLng(20.57180511258916,-101.20343685150146),
      new latLng.LatLng(20.55971083209013,-101.16880416870117),
    ];

  // List<latLng.LatLng> latlngList = <latLng.LatLng>[];
  
  // @override
  // void initState() {
  //   // TODO: implement initState
  //   loadAsset();
  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: 
        FlutterMap(
        options: MapOptions(
          center: latLng.LatLng(20.571354, -101.198520),
          zoom: 13.0,
        ),
        layers: [
          TileLayerOptions(
            urlTemplate: "https://api.mapbox.com/styles/v1/tadeovega/cl1fwvfxq000415nqbjnb67ud/tiles/256/{z}/{x}/{y}@2x?access_token=pk.eyJ1IjoidGFkZW92ZWdhIiwiYSI6ImNrczJpN3hjdjBvcHoyeW80bHlkaWdrN3gifQ.WKTxl4f0GW9LddaCe4PpbQ",
            additionalOptions: {
              'accessToken': 'pk.eyJ1IjoidGFkZW92ZWdhIiwiYSI6ImNrczJpN3hjdjBvcHoyeW80bHlkaWdrN3gifQ.WKTxl4f0GW9LddaCe4PpbQ',
              'id': 'mapbox.mapbox-streets-v8'
            }
          ),
          new PolylineLayerOptions(
            polylines: [
              new Polyline(
                points: points,
                strokeWidth: 5.0,
                color: Colors.red
              )
            ]
          )
        ],
      )//trailing comma makes auto-formatting nicer for build methods.
    );
  }

}