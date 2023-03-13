import 'dart:ui';
import 'package:flutter/material.dart' hide BoxDecoration, BoxShadow;
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart';
import 'package:project_four/modules/customer/ResultScreen.dart';
import 'package:project_four/shared/component/styles/colorManger.dart';
import 'package:project_four/shared/component/components/text.dart';

Widget formField({
  required String labelText,
  required TextEditingController PasswordContrroller,
  required TextInputType keyboardType,
  required IconData prefixIcon,
  IconData? suffixIcon,
}) =>
    Padding(
      padding: EdgeInsets.symmetric(horizontal: 15),
      child: Container(
        height: 60,
        decoration: BoxDecoration(
          color: Colors.grey[100],
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
                offset: Offset(3, 7),
                blurRadius: 5,
                spreadRadius: 1,
                color: Colors.black54,
                inset: true),
            BoxShadow(
              offset: Offset(-2, -7),
              blurRadius: 5,
              spreadRadius: 1,
              color: Colors.white,
              inset: true,
            ),
          ],
        ),
        child: TextFormField(
          controller: PasswordContrroller,
          validator: (value) {
            if (value!.isEmpty) {
              return 'this field an\'t be null';
            }
          },
          decoration: InputDecoration(
              hintText: labelText,hintStyle: TextStyle(
            fontSize: 17
          ),
              border: InputBorder.none,
              prefixIcon: Icon(
                prefixIcon,
                size: 20,
                color: ColorsManager.defaultColorGreen,
              ),
              suffixIcon: Icon(
                suffixIcon,
                color: ColorsManager.defaultColorGreen,
                size: 20,
              )),
        ),
      ),
    );

Widget LoginRegisterButton(
        {required var formKey,
        required Widget Text,
        required dynamic function}) =>
    GestureDetector(
     onTap: function,
      child: Container(
        height: 50,
        width: 330,
        child: Text,
        alignment: Alignment.center,
        decoration: BoxDecoration(
            color: Colors.grey[100],
            borderRadius: BorderRadius.circular(30),
            boxShadow: [
              BoxShadow(
                  inset: false,
                  offset: Offset(3, 10),
                  color: Colors.black12,
                  blurRadius: 20),
              BoxShadow(
                  inset: false,
                  offset: Offset(-5, -10),
                  color: Colors.white,
                  spreadRadius: 5,
                  blurRadius: 20),
              BoxShadow(
                  inset: true,
                  offset: Offset(-5, -5),
                  color: Colors.white,
                  blurRadius: 15),
              BoxShadow(
                  inset: true,
                  offset: Offset(5, 10),
                  color: Colors.black26,
                  blurRadius: 10,
                  spreadRadius: 1)
            ]),
      ),
    );



Widget separatorBuilder() => Padding(
      padding: const EdgeInsetsDirectional.only(start: 20, end: 20),
      child: Container(
        height: 1,
        width: double.infinity,
        color: Colors.grey[50],
      ),
    );
Widget postItem({String? name, ImageProvider? ImageProvider}) => Padding(
      padding: const EdgeInsetsDirectional.only(start: 20, end: 20, bottom: 20),
      child: Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
              color: Colors.grey[200], borderRadius: BorderRadius.circular(15)),
          child: Column(
            children: [
              Row(
                children: [
                  CircleAvatar(
                    radius: 25,
                    backgroundImage: ImageProvider,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  MyTextStyle(text: "${name}",fontSize: 20,bold: FontWeight.w500,color: ColorsManager.defaultColorBlack),
                  SizedBox(
                    width: 20,
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Image(image: AssetImage('assests/images/Rc.jpg')),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.favorite,color: ColorsManager.defaultColorYellow,),
                  SizedBox(
                    width: 110,
                  ),
                  Icon(Icons.comment_outlined,color: ColorsManager.defaultColorYellow,),
                  SizedBox(
                    width: 110,
                  ),
                  Icon(
                    Icons.messenger_outline,
                    color: ColorsManager.defaultColorYellow,
                  ),
                ],
              )
            ],
          )),
    );
Widget separatorText({String? text}) => Padding(
      padding: const EdgeInsetsDirectional.only(
          start: 20.0, end: 20, bottom: 20, top: 20),
      child: Text(
        text!,
        style: TextStyle(fontSize: 22, color: ColorsManager.defaultColorGreen),
      ),
    );

Widget CategoryItem(context, IconData? icon, String title) => GestureDetector(
    onTap: () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => ResultScreen()));
    },
    child: Container(
      height: 170,
      width: 120,
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          Container(
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(25),
                boxShadow: [
                  BoxShadow(
                      offset: Offset(5, 5),
                      blurRadius: 20,
                      spreadRadius: 0,
                      color: Colors.green[200]!),
                  BoxShadow(
                      offset: Offset(-10, -20),
                      blurRadius: 20,
                      spreadRadius: 5,
                      color: Colors.white),
                  BoxShadow(
                      offset: Offset(10, 20),
                      blurRadius: 40,
                      spreadRadius: 2,
                      color: Colors.green[50]!,
                      inset: true),
                  BoxShadow(
                      offset: Offset(-10, -20),
                      blurRadius: 20,
                      spreadRadius: 0,
                      color: Colors.white,
                      inset: true),
                ]),
          ),
          Padding(
            padding: const EdgeInsetsDirectional.only(top: 20),
            child: Icon(
              icon,
              size: 70,
              color: ColorsManager.defaultColorYellow,
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.only(bottom: 20),
            child: Align(
                alignment: Alignment.bottomCenter,
                child:MyTextStyle(text: '${title}',fontSize: 24,bold: FontWeight.bold,color: ColorsManager.defaultColorGreen)
               ),
          )
        ],
      ),
    ));
