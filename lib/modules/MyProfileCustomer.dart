import 'package:flutter/material.dart' hide BoxDecoration, BoxShadow;
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:getwidget/getwidget.dart';

import 'package:project_four/shared/component/colorManger.dart';
import 'package:project_four/shared/component/widgets.dart';

class MyprofileCustomer extends StatefulWidget {
  MyprofileCustomer({Key? key}) : super(key: key);

  @override
  State<MyprofileCustomer> createState() => _MyprofileCustomerState();
}

class _MyprofileCustomerState extends State<MyprofileCustomer> {
  double _iconRating=0.0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body:
        SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Container(
                  height: 350,
                  child: Stack(

                    children: [
                      Align(
                        alignment: Alignment.topCenter,
                        child: Stack(
                          alignment: AlignmentDirectional.topCenter,
                          children: [
                            Container(
                              height: 300,
                              decoration: BoxDecoration(
                                // gradient: LinearGradient(
                                //     begin: Alignment.bottomCenter,
                                //     end: Alignment.topCenter,
                                //     colors: [
                                //       defaultColor!,
                                //       Colors.green[800]!,
                                //       Colors.green[500]!,
                                //       Colors.green[200]!,
                                //
                                //     ]
                                // )
                                  color: Colors.black,
                                  borderRadius: BorderRadiusDirectional.only(bottomStart:Radius.circular(15),bottomEnd: Radius.circular(15))
                              ),
                            ),
                            Column(
                              children: [
                                Stack   (
                                  alignment: AlignmentDirectional.bottomEnd,
                                  children: [

                                    Padding(
                                      padding: const EdgeInsetsDirectional.only( top:20),
                                      child: Container(

                                        decoration: BoxDecoration(
                                            boxShadow: [
                                              BoxShadow(
                                                  offset: Offset(10, 10),
                                                  inset: false,
                                                  color: Colors.black12,
                                                  blurRadius: 50,
                                                  spreadRadius: 1

                                              ),
                                              BoxShadow(
                                                  offset: Offset(-10, -10),
                                                  inset: false,
                                                  color: Colors.black12,
                                                  blurRadius: 50,
                                                  spreadRadius: 1
                                              ),
                                            ]
                                        ),
                                        child:CircleAvatar(
                                          radius: 55,
                                          backgroundImage: AssetImage('assests/images/order-service.png',),
                                        ),),
                                    ),
                                    MaterialButton(
                                      onPressed: (){},
                                      child: Padding(
                                        padding: const EdgeInsetsDirectional.only(start:45,top: 20),
                                        child: Icon(Icons.camera_alt,size: 25,),
                                      ),
                                    )
                                  ],
                                ),
                                SizedBox(height: 10,),
                                Text('Hend Shoep',style: TextStyle(fontSize: 24,color:Colors.grey[200],fontWeight: FontWeight.bold),),
                                SizedBox(height: 10,),
                                Text('Hend Shoep@gmail.com',style: TextStyle(fontSize: 21,color:Colors.grey[200],),),



                              ],
                            ),



                          ],
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Padding(
                          padding: EdgeInsetsDirectional.only(top: 260,start:25,end: 25),
                          child: Container(
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20),
                                boxShadow: [
                                  BoxShadow(
                                      offset: Offset(10,20),
                                      color: Colors.grey[100]!,
                                      blurRadius: 20,
                                      spreadRadius: 3
                                  )]
                            ),
                            height: 100,
                            width: double.infinity,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Column(
                                  children: [
                                    IconButton(onPressed: (){}, icon: Icon(Icons.star_rate,color:ColorsManager. defaultColor2)),
                                    Text('4.5',style: TextStyle(color: Colors.black54,fontSize: 15),)
                                  ],
                                ),
                                SizedBox(width: 20,),

                                Column(
                                  children: [
                                    IconButton(onPressed: (){}, icon: Icon(Icons.inbox,color: ColorsManager.defaultColor2,)),
                                    Text('InBox',style: TextStyle(color: Colors.black54,fontSize: 15),)
                                  ],
                                ),
                                SizedBox(width: 20,),
                                Column(
                                  children: [
                                    Row(
                                      children: [
                                        TextButton(onPressed: (){},
                                            child: Container(width: 90,height: 40,
                                              decoration: BoxDecoration(
                                                  color:ColorsManager. defaultColor2,
                                                  borderRadius: BorderRadius.circular(20)
                                              ),
                                              child: Center(child: Text('Flollowing',style: TextStyle(color: Colors.white),)),)),
                                        Icon(Icons.share,color:ColorsManager. defaultColor2,)
                                      ],
                                    ),
                                    SizedBox(width: 20,),
                                  ],
                                ),
                                SizedBox(width: 20,),


                              ],
                            ),

                          ),
                        ),
                      ),


                    ],
                  ),
                ),

                Row(
                  children: [
                    separatorText(text: 'payment'),
                    SizedBox(width: 15,),
                    IconButton(onPressed: (){}, icon: Icon(Icons.edit,color:ColorsManager. defaultColor2,)) ],
                ),


                Padding(
                    padding:EdgeInsetsDirectional.only(start: 20,end: 20),
                    child: Container(
                      padding:EdgeInsetsDirectional.only(start: 20,end: 20) ,
                      child: Row(
                        children: [
                          IconButton(onPressed: (){}, icon:Icon( Icons.paypal,size: 30,color: Colors.blue,)),
                          SizedBox(width: 15,)
                          ,TextButton(onPressed: (){},child:Text('vodafone',style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold),))
                        ],
                      ),
                      height:80 ,
                      decoration:BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: Colors.grey[100]
                      ),
                    )),
                SizedBox(height: 20,),
                Row(
                  children: [
                    separatorText(text: 'location'),
                    SizedBox(width: 15,),
                    IconButton(onPressed: (){}, icon: Icon(Icons.edit,color: ColorsManager.defaultColor2,)) ],
                ),
                SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsetsDirectional.only(start: 20,end: 20),
                  child: Container(
                    padding: EdgeInsetsDirectional.only(start: 20,end: 20),
                    child: GoogleMap(
                      initialCameraPosition: CameraPosition(target: LatLng(30.177744638009873, 31.501632278956453),zoom: 8),

                    ),
                    height: 120,
                    decoration:BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: Colors.grey[100]
                    ),
                  ),
                ),
                SizedBox(height: 50,),



              ],
            )





        ),
      ),


    );
  }
}