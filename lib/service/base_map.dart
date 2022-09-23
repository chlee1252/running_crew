import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_naver_map/flutter_naver_map.dart';

class BaseMap extends StatefulWidget {
  const BaseMap({Key? key}) : super(key: key);

  @override
  State<BaseMap> createState() => _BaseMapState();
}

class _BaseMapState extends State<BaseMap> {
  Completer<NaverMapController> _controller = Completer();

  @override
  Widget build(BuildContext context) {
    return NaverMap(
      onMapCreated: onMapCreated,
      initialCameraPosition: CameraPosition(
        target: LatLng(37.4894382, 126.8969899),
        zoom: 18,
      ),
      initLocationTrackingMode: LocationTrackingMode.Follow,
      maxZoom: 18,
      minZoom: 12,
      locationButtonEnable: true,
    );
  }

  void onMapCreated(NaverMapController controller) {
    if (_controller.isCompleted) _controller = Completer();
    _controller.complete(controller);
  }
}
