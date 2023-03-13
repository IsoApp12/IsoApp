import 'package:flutter/material.dart' hide BoxDecoration, BoxShadow;
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:getwidget/getwidget.dart';
import 'package:project_four/shared/component/components/containers_presse.dart';
import 'package:project_four/shared/component/components/icons.dart';
import 'package:project_four/shared/component/components/text.dart';

import 'package:project_four/shared/component/styles/colorManger.dart';
import 'package:project_four/shared/component/components/widgets.dart';

class AccountCustomer extends StatefulWidget {
  AccountCustomer({Key? key}) : super(key: key);

  @override
  State<AccountCustomer> createState() => _AccountCustomerState();
}

class _AccountCustomerState extends State<AccountCustomer> {
  double _iconRating = 0.0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: BackArrow(context),
        ),
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
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
                        // Container(
                        //   height: double.infinity,
                        //   child: Image.asset("assests/images/logo.jpg"),
                        //   decoration: BoxDecoration(
                        //       borderRadius: BorderRadiusDirectional.only(
                        //           bottomStart: Radius.circular(15),
                        //           bottomEnd: Radius.circular(20))),
                        // ),
                        Column(
                          children: [
                            Stack(
                              alignment: AlignmentDirectional.bottomEnd,
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsetsDirectional.only(top: 20),
                                  child: Container(
                                    decoration: BoxDecoration(boxShadow: [
                                      BoxShadow(
                                          offset: Offset(10, 10),
                                          inset: false,
                                          color: Colors.green.shade100,
                                          blurRadius: 50,
                                          spreadRadius: 1),
                                      BoxShadow(
                                          offset: Offset(-10, -10),
                                          inset: false,
                                          color: Colors.white,
                                          blurRadius: 50,
                                          spreadRadius: 1),
                                    ]),
                                    child: CircleAvatar(
                                      radius: 70,
                                      backgroundImage: AssetImage(
                                        'assests/images/photo.jpg',
                                      ),
                                    ),
                                  ),
                                ),
                                MaterialButton(
                                  onPressed: () {},
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.only(
                                        start: 45, top: 20),
                                    child: Icon(
                                      Icons.camera_alt,
                                      size: 25,
                                    ),
                                  ),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            MyTextStyle(text: "Amira Ahmed",color: ColorsManager.defaultColorGreen,lines: 1),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'Hend Shoep@gmail.com',
                              style: TextStyle(
                                fontSize: 21,
                                color: ColorsManager.defaultColorGreen,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Padding(
                      padding: EdgeInsetsDirectional.only(
                           start: 25, end: 25),
                      child: Container(
                        decoration: BoxDecoration(
                            color: ColorsManager.defaultColorGreen,
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: [
                              BoxShadow(
                                  offset: Offset(10, 20),
                                  color: Colors.green[100]!,
                                  blurRadius: 20,
                                  spreadRadius: 3)
                            ]),
                        height: 80,
                        width: double.infinity,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Column(
                              children: [
                                IconButton(
                                    onPressed: () {},
                                    icon: Icon(Icons.star_rate,
                                        color:
                                            ColorsManager.defaultColorYellow)),
                                Text(
                                  '4.5',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 15,),
                                )
                              ],
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Column(
                              children: [
                                IconButton(
                                    onPressed: () {},
                                    icon: Icon(
                                      Icons.inbox,
                                      color: ColorsManager.defaultColorYellow,
                                    )),
                                Text(
                                  'InBox',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 15),
                                )
                              ],
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Column(
                              children: [
                                Row(
                                  children: [
                                    TextButton(
                                        onPressed: () {},
                                        child: Container(
                                          width: 90,
                                          height: 40,
                                          decoration: BoxDecoration(
                                              color: ColorsManager
                                                  .defaultColorYellow,
                                              borderRadius:
                                                  BorderRadius.circular(20)),
                                          child: Center(
                                              child: Text(
                                            'Flollowing',
                                            style:
                                                TextStyle(color: Colors.white),
                                          )),
                                        )),
                                    SizedBox(width: 20,),
                                    Icon(
                                      Icons.share,
                                      color: ColorsManager.defaultColorYellow,
                                    )
                                  ],
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                              ],
                            ),
                            SizedBox(
                              width: 20,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20,),
            Row(
              children: [
                separatorText(text: 'payment'),
                SizedBox(
                  width: 15,
                ),
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.edit,
                      color: ColorsManager.defaultColorYellow,
                    ))
              ],
            ),
            Padding(
                padding: EdgeInsetsDirectional.only(start: 20, end: 20),
                child: Container(
                  width: double.infinity,
                  height: 150,
                  padding: EdgeInsets.all(10),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        // IconButton(
                        //     onPressed: () {},
                        //     icon: Icon(
                        //       Icons.paypal,
                        //       size: 30,
                        //       color: Colors.blue,
                        //     )),
                        // SizedBox(
                        //   width: 15,
                        // ),
                        // TextButton(
                        //     onPressed: () {},
                        //     child: Text(
                        //       'vodafone',
                        //       style: TextStyle(
                        //         fontSize: 22,
                        //           color: Colors.red, fontWeight: FontWeight.bold),
                        //     )),
                        payment("assests/images/visa.png"),
                        payment("assests/images/visa.png"),
                        payment("assests/images/visa.png"),

                      ],
                    ),
                  ),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Colors.grey[100]),
                )),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                separatorText(text: 'location'),
                SizedBox(
                  width: 15,
                ),
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.edit,
                      color: ColorsManager.defaultColorYellow,
                    ))
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(start: 20, end: 20),
              child: Container(
                padding: EdgeInsetsDirectional.only(start: 20, end: 20),
                child: GoogleMap(
                  initialCameraPosition: CameraPosition(
                      target: LatLng(30.177744638009873, 31.501632278956453),
                      zoom: 8),
                ),
                height: 120,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Colors.grey[100]),
              ),
            ),
            SizedBox(
              height: 50,
            ),
          ],
        )),
      ),
    );
  }
}
