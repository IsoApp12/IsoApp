import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart' hide BoxDecoration, BoxShadow;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart';

import 'package:project_four/shared/component/colorManger.dart';
import 'package:project_four/shared/component/widgets.dart';
import 'package:project_four/shared/network/local/ServicesBloc.dart';
import 'package:project_four/shared/network/local/ServicesStates.dart';
class TimeLine extends StatelessWidget {
  const TimeLine({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ServicesCubit,ServicesStates>(
      listener: (context,state){},
      builder:(context,state){
        return  Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(

            backgroundColor: Colors.white,
            titleSpacing: 70,
            title:  Text('Discover !',style: TextStyle(fontSize: 30,fontFamily: 'Courgette',color: ColorsManager.defaultColor),),
            elevation: 0.0,
          ),
          body:  SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                separatorText(text: 'offers'),
                Padding(
                  padding: const EdgeInsetsDirectional.only(start: 20.0,end: 20,bottom: 20),
                  child: Container(
                    height: 185,
                    decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(20)
                    ),
                    child: CarouselSlider.builder(

                      options: CarouselOptions(
                        viewportFraction: 1,

                        aspectRatio:16 / 9,
                        autoPlay: true,
                        autoPlayCurve: Curves.linear,
                        autoPlayAnimationDuration: Duration(milliseconds: 600),
                        enlargeCenterPage:false,),

                      itemCount: 4,
                      itemBuilder: (BuildContext context, int index, int realIndex) =>
                      ServicesCubit.get(context).images[index],

                    ),
                  ),
                ),
                separatorText(text: 'friends'),
                SizedBox(height: 10,),
                ListView.separated(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    itemCount: 10,
                    separatorBuilder: (context,index)=>separatorBuilder(),
                    itemBuilder: (context,index)=>postItem(name: 'hanaa',ImageProvider: AssetImage('assests/images/download.jpg'))),




              ],
            ),
          ),


        );
      },);
  }
}