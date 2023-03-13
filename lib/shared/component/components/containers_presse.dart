import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:project_four/shared/component/components/text.dart';
import 'package:project_four/shared/component/styles/colorManger.dart';

Widget FollowTapsRow({
  String? numOfFollow,
  String? onClick,
  context,
  required String title
}){
  return  GestureDetector(
    onTap: (){
      Navigator.pushNamed(context, onClick!);
    },
    child: Container(
      padding: EdgeInsets.symmetric(vertical: 10),
      color: Colors.grey[200],
      width: 100,
      height: 75,
      child: Column(
        children: [
          MyTextStyle(text:numOfFollow==null? "":"${numOfFollow}",fontSize: 17,lines: 1,color: Colors.black),
          SizedBox(height: 5,),
          MyTextStyle(text: title,fontSize: 17,color: Colors.black),
        ],
      ),
    ),
  );
}

Widget payment (
    String UrlImage
    )
{
  return  Container(
    margin: EdgeInsets.symmetric(horizontal: 10),
    width: 200,
    height: 150,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(15),
    ),
    child:Image.asset(UrlImage,fit: BoxFit.cover),
  );
}

int click=0;
Widget TimeItem({
  required String item,
  int index=0,
  required Function function
})
{
  return GestureDetector(
    onTap:(){
      function(index);
      click=index;
      print(index);
    },
    child: Container(
      padding: EdgeInsets.symmetric(vertical: 15),
      child: MyTextStyle(text:item,align: TextAlign.center),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: index!=click ?Colors.white:Colors.grey[100]
      ),
    ),
  );
}
typedef Validator = String? Function(String?);
Widget CustomTextFeild({
  String? hint,
  bool hideText = false,
  TextEditingController? controller,
  required TextInputType type,
  IconData? iconSuffix,
  required IconData iconPreffix,
  Validator? validator,
}) {
  return Container(
    margin: EdgeInsets.only(bottom: 15),
    child: TextFormField(
      keyboardType: type,
      validator: validator,
      obscureText: hideText,
      controller: controller,
      style: TextStyle(fontSize: 18),
      decoration: InputDecoration(
        suffixIcon: Icon(
          iconSuffix,
          color: ColorsManager.defaultColorGreen,
        ),
        prefixIcon: Icon(
          iconPreffix,
          color: ColorsManager.defaultColorGreen,
        ),
        hintText: hint,
        fillColor: Colors.white,
        filled: true,
        focusColor: Colors.red,
        hintStyle: const TextStyle(
          color: Colors.grey,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: const BorderSide(color: Colors.black, width: 1),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: const BorderSide(color: Colors.black, width: 1),
        ),
      ),
      cursorColor: ColorsManager.defaultColorGreen,
    ),
  );
}
