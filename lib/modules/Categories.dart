import 'package:flutter/material.dart' hide BoxDecoration, BoxShadow;
import 'package:project_four/shared/component/colorManger.dart';
import 'package:project_four/shared/component/icons.dart';
import 'package:project_four/shared/component/widgets.dart';

class categories extends StatelessWidget {
  const categories({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: Colors.white,
          leading: Icon(Icons.category_outlined,color:ColorsManager. defaultColor2,),

          title:  Text('Categories',style: TextStyle(
            color:ColorsManager.defaultColor,
            fontSize: 26,
            fontFamily: 'Courgette',

          ),
          ),
        ),
        body: Center(
          child:
          Padding(
            padding:EdgeInsetsDirectional.only(top: 30,start: 15,end: 15),
            child: GridView.count(
              crossAxisSpacing: 25,
              crossAxisCount: 2,
              mainAxisSpacing: 25,
              children:[
               CategoryItem(context, crafts, 'Crafts'),
               CategoryItem(context, transportation, 'transportation'),
               CategoryItem(context, medical, 'medical'),
               CategoryItem(context, lawyers, 'lawyers'),
               CategoryItem(context, electronics, 'electronics'),
               CategoryItem(context,clothes, 'clothes'),
               CategoryItem(context, pharmacies, 'pharmacies'),
               CategoryItem(context, stationaries, 'stationaries'),



              ] ,
            ),
          ),

        )

    );
  }
}