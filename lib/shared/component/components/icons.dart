import 'package:flutter/material.dart';
import 'package:project_four/shared/component/styles/colorManger.dart';

Widget MyIcons ({
  BuildContext? context,
  Color? color,
  Color? colorIcon ,
  IconData? icon ,
   function ,
   }) {
  return InkWell(
    onTap: function,
    child: CircleAvatar(
      radius: 25,
      backgroundColor:color,
      child: Icon(icon,color: colorIcon,),
    ),
  );
}
Widget BackArrow (context) {
  return IconButton(onPressed: (){
    Navigator.pop(context);
  },
    icon: Icon(Icons.arrow_back_ios_new_sharp),
    color: ColorsManager.defaultColorGreen,);
}

IconData? crafts=Icons.handyman_outlined;
IconData? transportation=Icons.emoji_transportation_outlined;
IconData? medical=Icons.medical_information_outlined;
IconData? lawyers=Icons.account_balance_outlined;
IconData? electronics=Icons.electrical_services_outlined;
IconData? clothes=Icons.umbrella;
IconData? pharmacies=Icons.local_pharmacy_outlined;
IconData? stationaries=Icons.note_alt_outlined;
