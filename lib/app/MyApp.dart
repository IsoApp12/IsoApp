import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_four/modules/customer/OnBoardingScreen.dart';
import 'package:project_four/shared/component/components/routes.dart';
import 'package:project_four/shared/component/styles/theme.dart';
import 'package:project_four/shared/network/local/ServicesBloc.dart';
import 'package:project_four/shared/network/local/ServicesStates.dart';

class MyApp extends StatefulWidget {

  MyApp._internal();
  static final instance= MyApp._internal();
  factory MyApp()=>instance;
  bool isLast=false;

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {

    return MultiBlocProvider(providers: [
      BlocProvider(create: (BuildContext context)=>ServicesCubit()),
    ],
        child:BlocConsumer<ServicesCubit,ServicesStates>(
          listener:(context,states){} ,
          builder: (context,states){
            return MaterialApp(
              debugShowCheckedModeBanner:false,
              theme: MyTheme.light,
              home: onBoardingScreen(),
            );
          },
        )
    );
  }
}