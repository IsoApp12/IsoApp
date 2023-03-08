import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_four/models/FireStore/createUser.dart';
import 'package:project_four/modules/Categories.dart';
import 'package:project_four/modules/Home.dart';
import 'package:project_four/modules/SettingScreen.dart';
import 'package:project_four/modules/SignUp.dart';
import 'package:project_four/modules/TimeLine.dart';

import 'package:project_four/shared/network/local/ServicesStates.dart';


class ServicesCubit extends Cubit<ServicesStates>{
 ServicesCubit():super(initialState());
 static ServicesCubit get(context)=>BlocProvider.of(context);

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
 int num=0;
 increment (){
   num++;
   emit(increased());
   print('$num');
 }
 int currentIndex=0;
 changeCurrentIndex(int x){
   currentIndex=x;
   emit(ChangeCurrentIndexState());
  }

 NavigateToRegister(context){
   Navigator.push(context, MaterialPageRoute(builder: (context)=>Register()));
   emit(ServicesgotoRegisterState());
 }

 void ServicesRegister({required String name ,required String email ,required String phone,required String  password})async{
    emit(ServicesRegisterLoadingState());

    FirebaseAuth.instance.createUserWithEmailAndPassword(email: email, password: password).
    then((value){
      emit(ServicesRegisterSuccessState(value.user!.uid));
      createUser(name: name, email: email, phone: phone, uId: value.user!.uid);
    }
    ).catchError((onError){
      emit(ServicesRegisterErrorState());
      print('Register Error ${onError}');

   });
  }
  void createUser({required String name ,required String email ,required String phone,required String uId}){
    CreateUser userModel= CreateUser(name: name,email: email,phone: phone,uId: uId);
    emit(ServicesCreateUserLoadingState());
    FirebaseFirestore.instance.collection('useres').doc(uId).set(userModel.toMap())
        .then((value) {
          emit(ServicesCreateUserSuccessState());
    })
        .catchError((onError){
          emit(ServicesRegisterErrorState());
    });
  }
 void socialLogin({ String? name ,required String email , String? phone,required String  password})async{
   emit(ServicesLoginLoadingState());
   FirebaseAuth.instance.signInWithEmailAndPassword(email: email, password: password).
    then((value)  {
      emit(ServicesLoginSuccessState());
    }).
    catchError((onError){
    emit(ServicesLoginErrorState());
    print('Login Error ${onError}');
     });
 }

}