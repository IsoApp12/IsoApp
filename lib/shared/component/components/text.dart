import 'package:flutter/material.dart';
import 'package:project_four/shared/component/styles/colorManger.dart';

Widget MyTextStyle({
  required String text ,
  double fontSize =23.0,
  FontWeight bold = FontWeight.bold,
  Color color=ColorsManager.defaultColorGreen,
  int lines=4,
  TextAlign align =TextAlign.start,
  bool fontFamily=false,
})
{
  return Container(
    child: Text(text,
      textAlign: align,
      maxLines: lines,
      overflow: TextOverflow.ellipsis,
      style: TextStyle(
        fontSize: fontSize,
        color: color,
        fontWeight: bold,
        fontFamily: fontFamily?'Courgette':" "

      ),),
  );
}