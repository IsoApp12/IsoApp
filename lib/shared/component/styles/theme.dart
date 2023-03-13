import 'package:flutter/material.dart';
import 'package:project_four/shared/component/styles/colorManger.dart';

class MyTheme{
  static  final  light =ThemeData(
    appBarTheme: AppBarTheme(
      backgroundColor:Colors.white,
          centerTitle: true,
          elevation: 0
    ),
    primaryColor: ColorsManager.defaultColorGreen,
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: ColorsManager.defaultColorGreen,
        padding: EdgeInsets.symmetric(vertical: 14),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30)
        )
      )

    ),
    textTheme:TextTheme(
      headline4: TextStyle(
          color: ColorsManager.defaultColorGreen,
          fontSize: 28,
          fontWeight: FontWeight.bold
      ),
      headline3: TextStyle(
        color: ColorsManager.defaultColorGreen,
        fontSize: 22,
        fontWeight: FontWeight.bold
      ),
      headline2: TextStyle(
          color: ColorsManager.defaultColorGreen,
          fontSize: 23,
          fontWeight: FontWeight.bold
      ),

    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: ColorsManager.defaultColorGreen,
      selectedItemColor: ColorsManager.defaultColorYellow,
      selectedIconTheme: IconThemeData(
        size: 30
      ),
      showSelectedLabels: true,
      unselectedIconTheme: IconThemeData(
        color: ColorsManager.defaultColorWeight,
        size: 22
      ),
      unselectedItemColor: ColorsManager.defaultColorWeight
    )
  );
}