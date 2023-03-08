import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_four/app/MyApp.dart';
import 'package:flutter/services.dart';
import 'package:project_four/shared/network/local/CacheHelper.dart';
import 'package:project_four/shared/component/Constatnts.dart';
import 'shared/network/local/blocObserver.dart';
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  Bloc.observer = MyBlocObserver();
 await CacheHelper.initCache();
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
        statusBarColor: Colors.white,
      statusBarIconBrightness: Brightness.dark
    )
  );
uId=CacheHelper.getData(key: 'uId');
  runApp(MyApp());
}


