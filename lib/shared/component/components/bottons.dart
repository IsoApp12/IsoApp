import 'package:flutter/material.dart';
import 'package:project_four/shared/component/components/text.dart';
import 'package:project_four/shared/component/styles/colorManger.dart';

Widget Button(
    {
      double width=300,
      double height=50,
     required String text,
      IconData? iconData,
      Color? iconColor,
      required onPressed,
      required BuildContext context}) {
  return Container(
    width: width,
    height: height,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(100.0),
      color: ColorsManager.defaultColorGreen
    ),
    child: ElevatedButton(
      style: ButtonStyle(
        backgroundColor: MaterialStateColor.resolveWith((states) => ColorsManager.defaultColorGreen),
      ),
        onPressed: onPressed,
        child: MyTextStyle(text: text,color: Colors.white,fontSize: 20,bold: FontWeight.bold,align: TextAlign.center)
    )
  );
}
