// import 'dart:async';
//
// import 'package:flutter/material.dart';
// import 'package:google_maps_flutter/google_maps_flutter.dart';
//
// class PatientMap extends StatefulWidget {
//   const PatientMap({Key? key}) : super(key: key);
//
//   @override
//   State<PatientMap> createState() => _PatientMapState();
// }
//
// class _PatientMapState extends State<PatientMap>{
// Completer<GoogleMapController> _controller = Completer();
//
// static final CameraPosition _kGooglePlex = const CameraPosition(
//     target: LatLng(19.019421, 72.855985),
//     zoom: 14.4746
// );
//
// final List<Marker> _marker =[];
// final List<Marker> _list =  [
//   Marker(
//     markerId: MarkerId('1'),
//     position: LatLng(19.019421, 72.855985),
//     infoWindow: InfoWindow(
//         title: 'My current Location'
//     ),
//   ),
//   Marker(
//     markerId: MarkerId('2'),
//     position: LatLng(19.039421, 72.858985),
//     infoWindow: InfoWindow(
//         title: 'My current Location'
//     ),
//   ),
//   Marker(
//     markerId: MarkerId('3'),
//     position: LatLng(19.049421, 72.860985),
//     infoWindow: InfoWindow(
//         title: 'My current Location'
//     ),
//   ),
//   Marker(
//       markerId: MarkerId('4'),
//       position: LatLng(19.059421, 72.865985),
//       infoWindow: InfoWindow(
//           title: 'My current Location'
//       )
//   ),
//   Marker(
//       markerId: MarkerId('5'),
//       position: LatLng(20.5937, 78.9629),
//       infoWindow: InfoWindow(
//           title: 'My current Location'
//       )
//   ),
//
// ];
//
// @override
// void initState() {
//   // TODO: implement initState
//   super.initState();
//   _marker.addAll(_list);
// }
// @override
// Widget build(BuildContext context) {
//   return Scaffold(
//     body: SafeArea(
//       child: GoogleMap(
//         initialCameraPosition: _kGooglePlex,
//         mapType: MapType.normal,
//         markers: Set<Marker>.of(_marker),
//         myLocationEnabled: true,
//         compassEnabled: false,
//         onMapCreated: (GoogleMapController controller){
//           _controller.complete(controller);
//         },
//       ),
//     ),
//     floatingActionButton: FloatingActionButton(
//       child: Icon(Icons.location_disabled_outlined),
//       onPressed: () async{
//         GoogleMapController controller = await _controller.future;
//         controller.animateCamera(CameraUpdate.newCameraPosition(
//             CameraPosition(
//                 target: LatLng(20.5937, 78.9629),
//                 zoom: 14
//             )
//         )
//         );
//         setState(() {
//
//         });
//       },
//     ),
//   );
// }
// }
// // class _PatientMapState extends State<PatientMap> {
// //   static const _initialCameraPosition = CameraPosition(
// //       target: LatLng(37.773972, -122.431297),
// //       zoom: 11.5
// //   );
// //
// //   late GoogleMapController _googleMapController;
// //   Marker? _origin;
// //   Marker? _destination;
// //
// //   @override
// //   void dispose() {
// //     // TODO: implement dispose
// //     super.dispose();
// //   }
// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(
// //         centerTitle: false,
// //         title: const Text('Google Maps'),
// //         actions: [
// //           if(_origin!=null)
// //             TextButton(
// //                 onPressed: ()=> _googleMapController.animateCamera(
// //                     CameraUpdate.newCameraPosition(
// //                         CameraPosition(
// //                             target: _origin!.position,
// //                             zoom:14.5,
// //                             tilt:50.0
// //                         )
// //                     )
// //
// //                 ),
// //                 style: TextButton.styleFrom(
// //                     primary: Colors.green,
// //                     textStyle: const TextStyle(fontWeight: FontWeight.w600)
// //                 ),
// //                 child: const Text('ORIGIN')
// //             ),
// //           if(_destination!=null)
// //             TextButton(
// //                 onPressed: ()=> _googleMapController.animateCamera(
// //                     CameraUpdate.newCameraPosition(
// //                         CameraPosition(
// //                             target: _destination!.position,
// //                             zoom:14.5,
// //                             tilt:50.0
// //                         )
// //                     )
// //                 ),
// //                 style: TextButton.styleFrom(
// //                     primary: Colors.blue,
// //                     textStyle: const TextStyle(fontWeight: FontWeight.w600)
// //                 ),
// //                 child: const Text('DEST')
// //             ),
// //
// //         ],
// //       ),
// //       body: GoogleMap(
// //         initialCameraPosition: _initialCameraPosition,
// //         myLocationEnabled: false,
// //         onMapCreated: (controller)=> _googleMapController=controller,
// //         markers: {
// //           if(_origin!=null)
// //             _origin!,
// //           if(_destination!=null) _destination!
// //         },
// //         onLongPress: _addMarker,
// //       ),
// //       floatingActionButton: FloatingActionButton(
// //         backgroundColor: Theme.of(context).primaryColor,
// //         foregroundColor: Colors.black,
// //         onPressed: ()=> _googleMapController.animateCamera(
// //             CameraUpdate.newCameraPosition(_initialCameraPosition)
// //         ),
// //         child: const Icon(Icons.center_focus_strong),
// //       ),
// //     );
// //   }
// //   void _addMarker(LatLng pos){
// //     if(_origin==null || (_origin!=null && _destination!=null)){
// //
// //       setState(() {
// //         _origin = Marker(
// //             markerId: MarkerId('origin'),
// //             infoWindow: const InfoWindow(title: 'Origin'),
// //             icon:
// //             BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueGreen),
// //             position: pos
// //         );
// //         // _destination=null;
// //       });
// //     }
// //     else{
// //       setState(() {
// //         _origin = Marker(
// //             markerId:  MarkerId('destination'),
// //             infoWindow: const InfoWindow(title: 'Destination'),
// //             icon:
// //             BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueBlue),
// //             position: pos
// //         );
// //       });
// //     }
// //   }
// // }
