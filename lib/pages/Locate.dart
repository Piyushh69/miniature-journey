// import 'package:flutter/material.dart';
// import 'package:google_maps_flutter/google_maps_flutter.dart';
// import 'package:krc/pages/location.dart' as locations;
//
// void main() {
//   runApp(const Locate());
// }
//
// class Locate extends StatefulWidget {
//   const Locate({super.key});
//
//   @override
//   State<Locate> createState() => _MyAppState();
// }
//
// class _MyAppState extends State<Locate> {
//   final Map<String, Marker> _markers = {};
//   Future<void> _onMapCreated(GoogleMapController controller) async {
//     final googleOffices = await locations.getGoogleOffices();
//     setState(() {
//       _markers.clear();
//       for (final office in googleOffices.offices) {
//         final marker = Marker(
//           markerId: MarkerId(office.name),
//           position: LatLng(office.lat, office.lng),
//           infoWindow: InfoWindow(
//             title: office.name,
//             snippet: office.address,
//           ),
//         );
//         _markers[office.name] = marker;
//       }
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       theme: ThemeData(
//         useMaterial3: true,
//         colorSchemeSeed: Colors.green[700],
//       ),
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text('Library Locations'),
//           elevation: 2,
//         ),
//         body: GoogleMap(
//           onMapCreated: _onMapCreated,
//           initialCameraPosition: const CameraPosition(
//             target: LatLng(0, 0),
//             zoom: 2,
//           ),
//           markers: _markers.values.toSet(),
//         ),
//       ),
//     );
//   }
// }
//
import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';

class GoogleMapsPage extends StatefulWidget {
  @override
  _GoogleMapsPageState createState() => _GoogleMapsPageState();
}

class _GoogleMapsPageState extends State<GoogleMapsPage> {
  final Map<String, LatLng> libraryLocations = {
    'B1 library, Basement': LatLng(30.770189, 76.575877),
    'A1 library, 4th floor': LatLng(30.771708, 76.578312),
    'A2 library, Ground floor': LatLng(30.769733, 76.579304),
    'A3 library, 5th floor': LatLng(30.769079, 76.578638),
    'B2 library, 6th floor': LatLng(30.769100, 76.575865),
    'B3 library, 4th floor': LatLng(30.768608, 76.575865),
    'B4 library, 5th floor': LatLng(30.768771, 76.574569),
    'B5 library, 2nd floor': LatLng(30.770195, 76.571959),
    'C1 library, 2nd floor': LatLng(30.767219, 76.576117),
    'C3 library, 1st floor': LatLng(30.767210, 76.574721),
  };

  GoogleMapController? _controller;
  LocationData? _currentLocation;
  Location _location = Location();

  @override
  void initState() {
    super.initState();
    _initCurrentLocation();
  }

  Future<void> _initCurrentLocation() async {
    LocationData? locationData;

    // Request permission
    var permission = await _location.hasPermission();
    if (permission == PermissionStatus.denied) {
      permission = await _location.requestPermission();
      if (permission != PermissionStatus.granted) {
        // Handle permission denied
        return;
      }
    }

    try {
      // Get location
      locationData = await _location.getLocation();
    } catch (e) {
      print("Error: $e");
    }

    setState(() {
      _currentLocation = locationData;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Library Locations'),
      ),
      body: Column(
        children: [
          Expanded(
            child: GoogleMap(
              onMapCreated: (GoogleMapController controller) {
                _controller = controller;
              },
              initialCameraPosition: CameraPosition(
                target: _currentLocation != null
                    ? LatLng(_currentLocation!.latitude!, _currentLocation!.longitude!)
                    : LatLng(30.770189, 76.575877),
                zoom: 15.5,
              ),
              markers: _createMarkers(),
            ),
          ),
          Container(
            padding: EdgeInsets.all(8.0),
            color: Colors.grey[300],
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Marker Color: Blue - Library Locations',
                  style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
                ),
                if (_currentLocation != null) ...[
                  SizedBox(height: 8.0),
                  Text(
                    'Your Current Location:',
                    style: TextStyle(fontSize: 16.0),
                  ),
                  Text(
                    'Latitude: ${_currentLocation!.latitude}',
                    style: TextStyle(fontSize: 16.0),
                  ),
                  Text(
                    'Longitude: ${_currentLocation!.longitude}',
                    style: TextStyle(fontSize: 16.0),
                  ),
                  SizedBox(height: 8.0),
                  Text(
                    'Nearest Library: ${_findNearestLibrary()}',
                    style: TextStyle(fontSize: 16.0),
                  ),
                ],
              ],
            ),
          ),
        ],
      ),
    );
  }

  Set<Marker> _createMarkers() {
    return libraryLocations.entries.map((entry) {
      return Marker(
        markerId: MarkerId(entry.key),
        position: entry.value,
        infoWindow: InfoWindow(
          title: entry.key,
          snippet: 'Library Location',
        ),
        icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueBlue),
      );
    }).toSet();
  }

  String _findNearestLibrary() {
    if (_currentLocation == null) {
      return 'Unknown (Location not available)';
    }

    double minDistance = double.infinity;
    String nearestLibrary = '';

    libraryLocations.forEach((key, value) {
      double distance = _calculateDistance(
        _currentLocation!.latitude!,
        _currentLocation!.longitude!,
        value.latitude,
        value.longitude,
      );

      if (distance < minDistance) {
        minDistance = distance;
        nearestLibrary = key;
      }
    });

    return nearestLibrary;
  }

  double _calculateDistance(double lat1, double lon1, double lat2, double lon2) {
    const R = 6371.0; // Earth radius in kilometers
    double dLat = _toRadians(lat2 - lat1);
    double dLon = _toRadians(lon2 - lon1);

    double a = (sin(dLat / 2) * sin(dLat / 2) +
        cos(_toRadians(lat1)) * cos(_toRadians(lat2)) * sin(dLon / 2) * sin(dLon / 2));
    double c = 2 * atan2(sqrt(a), sqrt(1 - a));

    return R * c;
  }

  double _toRadians(double degrees) {
    return degrees * (pi / 180.0);
  }
}
