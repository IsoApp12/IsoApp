import 'dart:async';
import 'dart:collection';
import 'package:flutter/material.dart';
import 'package:focused_menu/focused_menu.dart';
import 'package:focused_menu/modals.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:project_four/shared/component/styles/colorManger.dart';

class  ResultScreen extends StatefulWidget {
  @override
  State<ResultScreen> createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {
  final Completer<GoogleMapController> _controller = Completer<GoogleMapController>();
  var markers=HashSet<Marker>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.bottomLeft,
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
          Align(
            alignment: Alignment.topCenter,
            child: Padding(padding: EdgeInsetsDirectional.only(top: 130,start: 20,end: 20)
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
                        labelText: 'find worker',
                        labelStyle: TextStyle(color: ColorsManager.defaultColorGreen),
                        border:InputBorder.none,
                        suffixIcon:
                        FocusedMenuHolder(
                            openWithTap: true,
                            onPressed: (){},
                            menuItems: [
                              FocusedMenuItem(
                                  title:FocusedMenuHolder(
                                    openWithTap: true,
                                    child: Text('Price'),
                                    onPressed:(){} ,
                                    menuItems: [
                                      FocusedMenuItem(
                                          title: Text('less hundred'),
                                          trailingIcon: Icon(Icons.add),
                                          onPressed: ()=>print('pressed')),
                                      FocusedMenuItem(
                                          title: Text('less 1k'),
                                          trailingIcon: Icon(Icons.add),
                                          onPressed: ()=>print('pressed')
                                      ),
                                      FocusedMenuItem(
                                          title: Text('less 10k'),
                                          trailingIcon: Icon(Icons.add),
                                          onPressed: ()=>print('pressed')
                                      ),
                                      FocusedMenuItem(
                                          title: Text('less 10k'),
                                          trailingIcon: Icon(Icons.add),
                                          onPressed: ()=>print('pressed')
                                      ),
                                      FocusedMenuItem(
                                          title: Text('less 50k'),
                                          trailingIcon: Icon(Icons.add),
                                          onPressed: ()=>print('pressed')
                                      ),
                                      FocusedMenuItem(
                                          title: Text('more'),
                                          trailingIcon: Icon(Icons.add),
                                          onPressed: ()=>print('pressed')
                                      ),

                                    ],

                                  ),
                                  trailingIcon: Icon(Icons.add),
                                  onPressed: ()=>print('pressed')
                              ),
                              FocusedMenuItem(
                                  title: FocusedMenuHolder(
                                    openWithTap: true,
                                    child: Text('Organization'),
                                    onPressed:(){} ,
                                    menuItems: [
                                      FocusedMenuItem(
                                          title: Text('indvidual'),
                                          trailingIcon: Icon(Icons.add),
                                          onPressed: ()=>print('pressed')),
                                      FocusedMenuItem(
                                          title: Text('company'),
                                          trailingIcon: Icon(Icons.add),
                                          onPressed: ()=>print('pressed')
                                      ),
                                    ],

                                  ),
                                  trailingIcon: Icon(Icons.add),
                                  onPressed: (){

                                  }
                              ),
                              FocusedMenuItem(
                                  title:  FocusedMenuHolder(
                                    openWithTap: true,
                                    child: Text('gender'),
                                    onPressed:(){} ,
                                    menuItems: [
                                      FocusedMenuItem(
                                          title: Text('male'),
                                          trailingIcon: Icon(Icons.add),
                                          onPressed: ()=>print('pressed')),
                                      FocusedMenuItem(
                                          title: Text('female'),
                                          trailingIcon: Icon(Icons.add),
                                          onPressed: ()=>print('pressed')
                                      ),
                                    ],

                                  ),
                                  trailingIcon: Icon(Icons.add),
                                  onPressed: ()=>print('pressed')
                              ),

                            ],
                            child: Icon(Icons.settings_input_composite_outlined,color: Colors.black,)))

                ),
              ) ,
            ),
          ),

          Padding(
            padding: const EdgeInsetsDirectional.only(start:30,bottom: 30),
            child: FloatingActionButton(

                backgroundColor:ColorsManager. defaultColorGreen,
                onPressed: (){
                  Navigator.pop(context);
                },
                child: Icon(Icons.arrow_back,color: Colors.black           )),
          )
        ],
      ),

    );
  }
}
