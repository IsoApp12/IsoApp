import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_four/data/modules/Home.dart';
import 'package:project_four/data/modules/SettingScreen.dart';
import 'package:project_four/data/modules/SignUp.dart';
import 'package:project_four/data/modules/TimeLine.dart';
import 'package:project_four/data/modules/categories.dart';
import 'package:project_four/models/FireStore/createUser.dart';
import 'package:project_four/models/FireStore/createUser.dart';

import 'package:project_four/network/local/ServicesStates.dart';

import '../../models/FireStore/createUser.dart';

class ServicesCubit extends Cubit<ServicesStates>{
 ServicesCubit():super(initialState());
 int currentIndex=0;
 List <Widget>images=[
   Image(image: AssetImage('assests/images/R.jpg',),fit: BoxFit.cover,),
   Image(image: AssetImage('assests/images/Ra.jpg')),
   Image(image: AssetImage('assests/images/Rb.jpg')),
   Image(image: AssetImage('assests/images/Rc.jpg')),



 ];
 List<Widget>screens=[
   Home(),
   categories(),
   TimeLine(),
   setting(),




 ];
 changeCurrentIndex(int x){
   currentIndex=x;
   emit(ChangeCurrentIndexState());
  }

 static ServicesCubit get(context)=>BlocProvider.of(context);
 NavigateToRegister(context){
   Navigator.push(context, MaterialPageRoute(builder: (context)=>Register()));
   emit(SocialgotoRegisterState());
 }

 void socialRegister({required String name ,required String email ,required String phone,required String  password})async{
    emit(SocialRegisterLoadingState());

    FirebaseAuth.instance.createUserWithEmailAndPassword(email: email, password: password).
    then((value){
      emit(SocialRegisterSuccessState());
      createUser(name: name, email: email, phone: phone, uId: value.user!.uid);
    }
    ).catchError((onError){
      emit(SocialRegisterErrorState());
      print('Register Error ${onError}');

   });
  }
  void createUser({required String name ,required String email ,required String phone,required String uId}){
    CreateUser userModel= CreateUser(name: name,email: email,phone: phone,uId: uId);
    emit(SocialCreateUserLoadingState());
    FirebaseFirestore.instance.collection('useres').doc(uId).set(userModel.toMap())
        .then((value) {
          emit(SocialCreateUserSuccessState());
    })
        .catchError((onError){
          emit(SocialRegisterErrorState());
    });
  }
 void socialLogin({ String? name ,required String email , String? phone,required String  password})async{
   emit(SocialLoginLoadingState());
   FirebaseAuth.instance.signInWithEmailAndPassword(email: email, password: password).
    then((value)  {
      emit(SocialRegisterSuccessState());
    }).
    catchError((onError){
    emit(SocialRegisterErrorState());
    print('Login Error ${onError}');
     });
 }

}