import 'dart:async';
import 'dart:collection';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:project_four/network/local/ServicesBloc.dart';
import 'package:project_four/presentation/colorManger.dart';

class  Home extends StatefulWidget {
   const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final Completer<GoogleMapController> _controller = Completer<GoogleMapController>();
  var markers=HashSet<Marker>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Stack(
        
        children: [

          GoogleMap(
            initialCameraPosition: CameraPosition(target: LatLng(30.177744638009873, 31.501632278956453),zoom: 8),
           onMapCreated: (googleMapConroller){
              markers.add(
                Marker(markerId: MarkerId('1'),
                  position:LatLng(30.177744638009873, 31.501632278956453)
                )
              );
           },
            markers: markers,
          ),
          Padding(padding: EdgeInsetsDirectional.only(top: 140,start: 20,end: 20)
            ,child: Container(
            padding:EdgeInsetsDirectional.only(start: 20) ,
             height: 55,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                color: Colors.grey[200]
              ),
              child:TextFormField(

              decoration: InputDecoration(
                prefixIcon: Icon(Icons.search),
               labelText: 'Find People',
               labelStyle: TextStyle(color:ColorsManager. defaultColor),
               border:InputBorder.none,


              ),
              ) ,
            ),),
        ],
      ),
    );
  }
}
