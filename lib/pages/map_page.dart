import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:ying_yang/widgets/main_AppBar.dart';
import 'package:ying_yang/widgets/map_bottom_pill.dart';
import 'package:ying_yang/widgets/map_user_badge.dart';

const LatLng SOURCE_LOCATION = LatLng(42.7477863, -71.1699932);
const LatLng DEST_LOCATION = LatLng(42.744421, -71.1698939);
const double CAMERA_ZOOM = 16;
const double CAMERA_TILT = 80;
const double CAMERA_BEARING = 30;
const double PIN_VISIBLE_POSITION = 20;
const double PIN_INVISIBLE_POSITION = -220;

class MapPage extends StatefulWidget {
  const MapPage({Key? key}) : super(key: key);

  @override
  _MapPageState createState() => _MapPageState();
}

class _MapPageState extends State<MapPage> {
  Completer<GoogleMapController> _controller = Completer();
  late BitmapDescriptor sourceIcon;
  late BitmapDescriptor destinationIcon;

  //set collection of marker references
  Set<Marker> _markers = Set<Marker>();

  double pinPillPosition = PIN_INVISIBLE_POSITION;

  late LatLng currentLocation;
  late LatLng destinationLocation;
  bool userBadgeSelected = false;

  @override
  void initState() {
    super.initState();
    //invoke initial location
    setInitialLocation();

    //invoke destination location
    setSourceAndDestinationMarkerIcons();
  }

  void setSourceAndDestinationMarkerIcons() async {
    sourceIcon = await BitmapDescriptor.fromAssetImage(
        ImageConfiguration(devicePixelRatio: 2),
        "assets/images/source_pin.png");

    destinationIcon = await BitmapDescriptor.fromAssetImage(
        ImageConfiguration(devicePixelRatio: 3),
        "assets/images/destination_pin.png");
  }

  void setInitialLocation() {
    currentLocation =
        LatLng(SOURCE_LOCATION.latitude, SOURCE_LOCATION.longitude);

    destinationLocation =
        LatLng(DEST_LOCATION.latitude, DEST_LOCATION.longitude);
  }

  @override
  Widget build(BuildContext context) {
    CameraPosition initialCameraPosition = CameraPosition(
      target: SOURCE_LOCATION,
      zoom: CAMERA_ZOOM,
      tilt: CAMERA_TILT,
      bearing: CAMERA_BEARING,
    );

    return Scaffold(
      body: Stack(children: [
        Positioned.fill(
          child: GoogleMap(
            initialCameraPosition: initialCameraPosition,
            myLocationButtonEnabled: true,
            compassEnabled: false,
            tiltGesturesEnabled: false,
            markers: _markers,
            mapType: MapType.normal,
            onTap: (LatLng loc) {
              setState(() {
                this.pinPillPosition = PIN_INVISIBLE_POSITION;
                this.userBadgeSelected = false;
              });
            },
            onMapCreated: (GoogleMapController controller) {
              _controller.complete(controller);

              showPinsOnMap();
            },
          ),
        ),
        Positioned(
          top: 100,
          left: 0,
          right: 0,
          child: MapUserBadge(
            isSelected: this.userBadgeSelected,
          ),
        ),
        AnimatedPositioned(
          duration: const Duration(milliseconds: 500),
          curve: Curves.easeInOut,
          left: 0,
          right: 0,
          bottom: this.pinPillPosition,
          child: MapBottomPill(),
        ),
        Positioned(
          top: 0,
          left: 0,
          right: 0,
          child: MainAppBar(
            showProfilePic: false,
          ),
        )
      ]),
    );
  }

  void showPinsOnMap() {
    setState(() {
      _markers.add(Marker(
        markerId: MarkerId("sourcePin"),
        position: currentLocation,
        icon: sourceIcon,
        infoWindow: InfoWindow(title: "shop"),
        onTap: () {
          setState(() {
            this.userBadgeSelected = true;
          });
        },
      ));

      _markers.add(Marker(
          markerId: MarkerId("destinationPin"),
          position: destinationLocation,
          icon: destinationIcon,
          onTap: () {
            setState(() {
              this.pinPillPosition = PIN_VISIBLE_POSITION;
            });
          }));
    });
  }
}
