// import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapSample extends StatefulWidget {
  const MapSample({Key? key}) : super(key: key);

  @override
  _MapSampleState createState() => _MapSampleState();
}

class _MapSampleState extends State<MapSample> {
  static const _intialCameraPosition = CameraPosition(
    target: LatLng(7.3697, 12.3547),
    zoom: 11.5,
  );

  @override
  Widget build(BuildContext context) {
    return const GoogleMap(
      initialCameraPosition: _intialCameraPosition,
      myLocationButtonEnabled: false,
      zoomControlsEnabled: false,
    );
  }
}
