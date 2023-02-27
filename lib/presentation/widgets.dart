import 'package:flutter/material.dart' hide BoxDecoration, BoxShadow;
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart';
import 'package:project_four/presentation/colorManger.dart';
Widget formField({required String labelText,required TextEditingController PasswordContrroller,required TextInputType keyboardType,required IconData prefixIcon,IconData? suffixIcon,})=>
    Padding(
      padding: EdgeInsets.symmetric( horizontal: 15),
      child: Container(
        height: 60,
        decoration:  BoxDecoration(
          color: Colors.grey[100],
          borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                  offset: Offset(3,7),
                  blurRadius: 5,
                  spreadRadius: 1,

                  color:Colors.black54,
                inset: true
              ),
              BoxShadow(
                offset: Offset(-2,-7),
                blurRadius: 5,
                spreadRadius: 1,
                color:Colors.white,
                inset: true,
              ),
            ],
          ),

  child:  TextFormField(
      controller: PasswordContrroller,
      validator: (value){
        if(value!.isEmpty){return 'this field an\'t be null';}
      },
      decoration: InputDecoration(
        labelText: labelText,

          border: InputBorder.none,
          prefixIcon:Icon(prefixIcon,size: 20,),
          suffixIcon: Icon(suffixIcon,size: 20,)
      ),


  ),),
    );

Widget LoginRegisterButton({required var formKey,required Widget Text ,required dynamic function})=>
    Container(
      height: 50,
      width: 330,
      child:MaterialButton(
          child: Text,
          onPressed: function,),
         alignment: Alignment.center,
        decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(30),
        boxShadow: [
          BoxShadow(
            inset: false,
            offset: Offset(3,10),
              color: Colors.black12,

              blurRadius: 20

          ),
          BoxShadow(
              inset:false,
            offset: Offset(-5,-10),
              color: Colors.white,
              spreadRadius: 5,
              blurRadius: 20

          ),
          BoxShadow(
              inset:true,
              offset: Offset(-5,-5),
              color: Colors.white,

              blurRadius: 15

          ),
          BoxShadow(
          inset: true,
          offset: Offset(5,10),
          color: Colors.black26,

        blurRadius: 10,
          spreadRadius: 1
        )

        ]
      ),
    );
Widget separatorBuilder()=>Padding(
  padding: const EdgeInsetsDirectional.only(start: 20,end: 20),
  child: Container(height: 1,width: double.infinity,color: Colors.grey[50],),
);
Widget postItem({String? name,ImageProvider? ImageProvider})=>
    Padding(
      padding: const EdgeInsetsDirectional.only(start:20, end:20, bottom:20),
      child: Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
              color: Colors.grey[200],

              borderRadius: BorderRadius.circular(15)
          ),
          child: Column(
            children: [
              Row(
                children: [
                  CircleAvatar(
                    radius: 25,
                    backgroundImage: ImageProvider,

                  ),
                  SizedBox(width: 20,),
                  Text('${name}',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 20,color: ColorsManager. defaultColor),),

                  SizedBox(width: 20,),
                ],
              ),
              SizedBox(height: 15,),
              Image(image: AssetImage('assests/images/Rc.jpg')),
              SizedBox(height: 15,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.favorite,color:ColorsManager. defaultColor,),
                  SizedBox(width: 110,),
                  Icon(Icons.comment_outlined,color:ColorsManager. defaultColor,),
                  SizedBox(width: 110,),
                  Icon(Icons.messenger_outline,color: ColorsManager.defaultColor,),


                ],
              )


            ],
          )),



    );
Widget separatorText({String? text})=>
    Padding(
      padding: const EdgeInsetsDirectional.only(start: 20.0,end: 20,bottom: 20,top: 20),
      child: Text(text!,style: TextStyle(fontSize: 22,color: ColorsManager.defaultColor),),

    );

