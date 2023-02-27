import 'package:flutter/material.dart' hide BoxDecoration, BoxShadow;
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart';
import 'package:community_material_icon/community_material_icon.dart';
import 'package:project_four/data/modules/ResultScreen.dart';
import 'package:project_four/presentation/colorManger.dart';

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
               GestureDetector(
                 onTap: (){
                   Navigator.push(context, MaterialPageRoute(builder: (context)=>ResultScreen()));
                 },
                   child:Container(
                 height: 170,
                 width: 120,
                 child: Stack(
                   alignment: Alignment.topCenter,
                   children: [
                     Container(

                       decoration: BoxDecoration(
                           color: Colors.white,
                           borderRadius: BorderRadius.circular(25),
                           boxShadow: [
                             BoxShadow(
                                 offset: Offset(5,5),
                                 blurRadius: 20,
                                 spreadRadius: 0,
                                 color:Colors.green[200] !

                             ),
                             BoxShadow(
                                 offset: Offset(-10,-20),
                                 blurRadius: 20,
                                 spreadRadius: 5,
                                 color:Colors. white

                             ),
                             BoxShadow(
                                 offset: Offset(10,20),
                                 blurRadius: 40,
                                 spreadRadius: 2,
                                 color:Colors.green[50]!,
                                 inset:true

                             ),
                             BoxShadow(
                                 offset: Offset(-10,-20),
                                 blurRadius: 20,
                                 spreadRadius: 0,
                                 color:Colors. white,
                                 inset: true

                             ),
                           ]

                       ),
                     ),

                     Padding(
                       padding: const EdgeInsetsDirectional.only( top:20),
                       child: Icon(Icons.handyman_outlined,size: 70,color:ColorsManager. defaultColor2,),),
                     Padding(
                       padding: EdgeInsetsDirectional.only( bottom:20),
                       child: Align(
                           alignment:Alignment.bottomCenter,
                           child: Text('crafts',style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold,color:ColorsManager. defaultColor),)),
                     )

                   ],
                 ),
               )) ,
               GestureDetector(
                 onTap: (){
                   Navigator.push(context, MaterialPageRoute(builder: (context)=>ResultScreen()));
                 },
                 child: Container(
                   height: 170,
                   width: 120,
                   child: Stack(
                     alignment: Alignment.topCenter,
                     children: [
                       Container(

                         decoration: BoxDecoration(
                             color: Colors.white,
                             borderRadius: BorderRadius.circular(25),
                             boxShadow: [
                               BoxShadow(
                                   offset: Offset(5,5),
                                   blurRadius: 20,
                                   spreadRadius: 0,
                                   color:Colors.green[200] !

                               ),
                               BoxShadow(
                                   offset: Offset(-10,-20),
                                   blurRadius: 20,
                                   spreadRadius: 5,
                                   color:Colors. white

                               ),
                               BoxShadow(
                                   offset: Offset(10,20),
                                   blurRadius: 40,
                                   spreadRadius: 2,
                                   color:Colors.green[50]!,
                                   inset:true

                               ),
                               BoxShadow(
                                   offset: Offset(-10,-20),
                                   blurRadius: 20,
                                   spreadRadius: 0,
                                   color:Colors. white,
                                   inset: true

                               ),
                             ]

                         ),
                       ),

                       Padding(
                         padding: const EdgeInsetsDirectional.only( top:20),
                         child: Icon(Icons.emoji_transportation_outlined,size: 70,color:ColorsManager. defaultColor2,),),
                       Padding(
                         padding: EdgeInsetsDirectional.only( bottom:20),
                         child: Align(
                             alignment:Alignment.bottomCenter,
                             child: Text('transportation',style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold,color:ColorsManager .defaultColor),)),
                       )

                     ],
                   ),
                 ),
               ),
               GestureDetector(
                 onTap: (){
                   Navigator.push(context, MaterialPageRoute(builder: (context)=>ResultScreen()));
                 },
                 child:Container(
                   height: 170,
                   width: 120,
                 child: Stack(
                   alignment: Alignment.topCenter,
                   children: [
                     Container(

                       decoration: BoxDecoration(
                           color: Colors.white,
                           borderRadius: BorderRadius.circular(25),
                           boxShadow: [
                             BoxShadow(
                                 offset: Offset(5,5),
                                 blurRadius: 20,
                                 spreadRadius: 0,
                                 color:Colors.green[200] !

                             ),
                             BoxShadow(
                                 offset: Offset(-10,-20),
                                 blurRadius: 20,
                                 spreadRadius: 5,
                                 color:Colors. white

                             ),
                             BoxShadow(
                                 offset: Offset(10,20),
                                 blurRadius: 40,
                                 spreadRadius: 2,
                                 color:Colors.green[50]!,
                                 inset:true

                             ),
                             BoxShadow(
                                 offset: Offset(-10,-20),
                                 blurRadius: 20,
                                 spreadRadius: 0,
                                 color:Colors. white,
                                 inset: true

                             ),
                           ]

                       ),
                     ),

                     Padding(
                       padding: const EdgeInsetsDirectional.only( top:20),
                       child: Icon(Icons.medical_information_outlined,size: 70,color:ColorsManager. defaultColor2,),),
                     Padding(
                       padding: EdgeInsetsDirectional.only( bottom:20),
                       child: Align(
                           alignment:Alignment.bottomCenter,
                           child: Text('medical',style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold,color:ColorsManager. defaultColor),)),
                     )

                   ],
                 ),
               ),),
               GestureDetector(
                 onTap: (){
                   Navigator.push(context, MaterialPageRoute(builder: (context)=>ResultScreen()));
                 },
                 child: Container(
                   height: 170,
                   width: 120,
                   child: Stack(
                     alignment: Alignment.topCenter,
                     children: [
                       Container(

                         decoration: BoxDecoration(
                             color: Colors.white,
                             borderRadius: BorderRadius.circular(25),
                             boxShadow: [
                               BoxShadow(
                                   offset: Offset(5,5),
                                   blurRadius: 20,
                                   spreadRadius: 0,
                                   color:Colors.green[200] !

                               ),
                               BoxShadow(
                                   offset: Offset(-10,-20),
                                   blurRadius: 20,
                                   spreadRadius: 5,
                                   color:Colors. white

                               ),
                               BoxShadow(
                                   offset: Offset(10,20),
                                   blurRadius: 40,
                                   spreadRadius: 2,
                                   color:Colors.green[50]!,
                                   inset:true

                               ),
                               BoxShadow(
                                   offset: Offset(-10,-20),
                                   blurRadius: 20,
                                   spreadRadius: 0,
                                   color:Colors. white,
                                   inset: true

                               ),
                             ]

                         ),
                       ),

                       Padding(
                         padding: const EdgeInsetsDirectional.only( top:20),
                         child: Icon(Icons.account_balance_outlined,size: 70,color:ColorsManager. defaultColor2,)),
                       Padding(
                         padding: EdgeInsetsDirectional.only( bottom:20),
                         child: Align(
                             alignment:Alignment.bottomCenter,
                             child: Text('lawyers',style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold,color:ColorsManager. defaultColor),)),
                       )

                     ],
                   ),
                 ),
               ),
               GestureDetector(
                 onTap: (){
                   Navigator.push(context, MaterialPageRoute(builder: (context)=>ResultScreen()));
                 },
                 child: Container(
                   height: 170,
                   width: 120,
                   child: Stack(
                     alignment: Alignment.topCenter,
                     children: [
                       Container(

                         decoration: BoxDecoration(
                             color: Colors.white,
                             borderRadius: BorderRadius.circular(25),
                             boxShadow: [
                               BoxShadow(
                                   offset: Offset(5,5),
                                   blurRadius: 20,
                                   spreadRadius: 0,
                                   color:Colors.green[200] !

                               ),
                               BoxShadow(
                                   offset: Offset(-10,-20),
                                   blurRadius: 20,
                                   spreadRadius: 5,
                                   color:Colors. white

                               ),
                               BoxShadow(
                                   offset: Offset(10,20),
                                   blurRadius: 40,
                                   spreadRadius: 2,
                                   color:Colors.green[50]!,
                                   inset:true

                               ),
                               BoxShadow(
                                   offset: Offset(-10,-20),
                                   blurRadius: 20,
                                   spreadRadius: 0,
                                   color:Colors. white,
                                   inset: true

                               ),
                             ]

                         ),
                       ),

                       Padding(
                           padding: const EdgeInsetsDirectional.only( top:20),
                           child: Icon(Icons.electrical_services_outlined,size: 90,color:ColorsManager. defaultColor2,)),
                       Padding(
                         padding: EdgeInsetsDirectional.only( bottom:20),
                         child: Align(
                             alignment:Alignment.bottomCenter,
                             child: Text('electronics',style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold,color:ColorsManager. defaultColor),)),
                       )

                     ],
                   ),
                 ),
               ),
               GestureDetector(
                 onTap: (){
                   Navigator.push(context, MaterialPageRoute(builder: (context)=>ResultScreen()));
                 },
                 child: Container(
                   height: 170,
                   width: 120,
                   child: Stack(
                     alignment: Alignment.topCenter,
                     children: [
                       Container(

                         decoration: BoxDecoration(
                             color: Colors.white,
                             borderRadius: BorderRadius.circular(25),
                             boxShadow: [
                               BoxShadow(
                                   offset: Offset(5,5),
                                   blurRadius: 20,
                                   spreadRadius: 0,
                                   color:Colors.green[200] !

                               ),
                               BoxShadow(
                                   offset: Offset(-10,-20),
                                   blurRadius: 20,
                                   spreadRadius: 5,
                                   color:Colors. white

                               ),
                               BoxShadow(
                                   offset: Offset(10,20),
                                   blurRadius: 40,
                                   spreadRadius: 2,
                                   color:Colors.green[50]!,
                                   inset:true

                               ),
                               BoxShadow(
                                   offset: Offset(-10,-20),
                                   blurRadius: 20,
                                   spreadRadius: 0,
                                   color:Colors. white,
                                   inset: true

                               ),
                             ]

                         ),
                       ),

                       Padding(
                           padding: const EdgeInsetsDirectional.only( top:20),
                           child: Icon(Icons.umbrella,size: 70,color:ColorsManager. defaultColor2,)),
                       Padding(
                         padding: EdgeInsetsDirectional.only( bottom:20),
                         child: Align(
                             alignment:Alignment.bottomCenter,
                             child: Text('clothes',style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold,color:ColorsManager. defaultColor),)),
                       )

                     ],
                   ),
                 ),
               ),
               GestureDetector(
                 onTap: (){
                   Navigator.push(context, MaterialPageRoute(builder: (context)=>ResultScreen()));
                 },
                 child: Container(
                   height: 170,
                   width: 120,
                   child: Stack(
                     alignment: Alignment.topCenter,
                     children: [
                       Container(

                         decoration: BoxDecoration(
                             color: Colors.white,
                             borderRadius: BorderRadius.circular(25),
                             boxShadow: [
                               BoxShadow(
                                   offset: Offset(5,5),
                                   blurRadius: 20,
                                   spreadRadius: 0,
                                   color:Colors.green[200] !

                               ),
                               BoxShadow(
                                   offset: Offset(-10,-20),
                                   blurRadius: 20,
                                   spreadRadius: 5,
                                   color:Colors. white

                               ),
                               BoxShadow(
                                   offset: Offset(10,20),
                                   blurRadius: 40,
                                   spreadRadius: 2,
                                   color:Colors.green[50]!,
                                   inset:true

                               ),
                               BoxShadow(
                                   offset: Offset(-10,-20),
                                   blurRadius: 20,
                                   spreadRadius: 0,
                                   color:Colors. white,
                                   inset: true

                               ),
                             ]

                         ),
                       ),

                       Padding(
                           padding: const EdgeInsetsDirectional.only( top:20),
                           child: Icon(Icons.local_pharmacy_outlined,size: 70,color:ColorsManager. defaultColor2,)),
                       Padding(
                         padding: EdgeInsetsDirectional.only( bottom:20),
                         child: Align(
                             alignment:Alignment.bottomCenter,
                             child: Text('pharmacies',style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold,color: ColorsManager.defaultColor),)),
                       )

                     ],
                   ),
                 ),
               ),
               GestureDetector(
                 onTap: (){
                   Navigator.push(context, MaterialPageRoute(builder: (context)=>ResultScreen()));
                 },
                 child: Container(
                   height: 170,
                   width: 120,
                   child: Stack(
                     alignment: Alignment.topCenter,
                     children: [
                       Container(

                         decoration: BoxDecoration(
                             color: Colors.white,
                             borderRadius: BorderRadius.circular(25),
                             boxShadow: [
                               BoxShadow(
                                   offset: Offset(5,5),
                                   blurRadius: 20,
                                   spreadRadius: 0,
                                   color:Colors.green[200] !

                               ),
                               BoxShadow(
                                   offset: Offset(-10,-20),
                                   blurRadius: 20,
                                   spreadRadius: 5,
                                   color:Colors. white

                               ),
                               BoxShadow(
                                   offset: Offset(10,20),
                                   blurRadius: 40,
                                   spreadRadius: 2,
                                   color:Colors.green[50]!,
                                   inset:true

                               ),
                               BoxShadow(
                                   offset: Offset(-10,-20),
                                   blurRadius: 20,
                                   spreadRadius: 0,
                                   color:Colors. white,
                                   inset: true

                               ),
                             ]

                         ),
                       ),

                       Padding(
                           padding: const EdgeInsetsDirectional.only( top:20),
                           child: Icon(Icons.note_alt_outlined,size: 70,color: ColorsManager.defaultColor2,)),
                       Padding(
                         padding: EdgeInsetsDirectional.only( bottom:20),
                         child: Align(
                             alignment:Alignment.bottomCenter,
                             child: Text('stationaries',style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold,color: ColorsManager.defaultColor),)),
                       )

                     ],
                   ),
                 ),
               ),


             ] ,
           ),
         ),

          )

    );
  }
}
