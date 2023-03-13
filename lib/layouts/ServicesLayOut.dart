import 'package:flutter/material.dart' hide BoxDecoration, BoxShadow;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart';
import 'package:project_four/shared/component/styles/colorManger.dart';
import 'package:project_four/shared/network/local/ServicesBloc.dart';
import 'package:project_four/shared/network/local/ServicesStates.dart';
class ServicesLayOut extends StatelessWidget {
  const ServicesLayOut({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ServicesCubit,ServicesStates>(
      listener:(context,state){} ,
      builder: (context,state){
        return Scaffold(
          body: ServicesCubit.get(context).screens[ServicesCubit.get(context).currentIndex],
          bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            backgroundColor: ColorsManager.defaultColorGreen,
            selectedItemColor:ColorsManager.defaultColorYellow,
            unselectedItemColor: Colors.white,
            selectedIconTheme: IconThemeData(
              size: 32
            ),
            items: [
              BottomNavigationBarItem(icon: Icon(Icons.home_filled),label:'Home',  ),
              BottomNavigationBarItem(icon: Icon(Icons.category),label:'Categories', ),
              BottomNavigationBarItem(icon: Icon(Icons.view_timeline),label:'Time line' ),
              BottomNavigationBarItem(icon: Icon(Icons.settings),label:'Settings' ),


            ],
            currentIndex:ServicesCubit.get(context).currentIndex ,
            onTap: (x){
              ServicesCubit.get(context).changeCurrentIndex(x);
            },
          ),
        );
      },
    );
  }
}
