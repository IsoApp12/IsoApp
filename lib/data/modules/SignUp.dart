import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:project_four/network/local/ServicesStates.dart';
import 'package:project_four/presentation/widgets.dart';
import 'package:project_four/network/local/ServicesBloc.dart';
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart';
import 'package:project_four/presentation/colorManger.dart';

class Register extends StatelessWidget {
  const Register({Key? key}) : super(key: key);
  static const IconData facebook = IconData(0xe255, fontFamily: 'MaterialIcons');

  static final TextEditingController nameController=TextEditingController();
  static final TextEditingController emailController=TextEditingController();
  static final TextEditingController phoneController=TextEditingController();
  static final TextEditingController passwordController=TextEditingController();
  static final  formKey=GlobalKey<FormState>();
  static final Widget text=Text('Register',style: TextStyle(fontFamily: 'Courgette',fontSize: 18,color:ColorsManager. defaultColor),);

  @override
  Widget build(BuildContext context) {

    return SafeArea(
       child:BlocConsumer<ServicesCubit,ServicesStates>(
        listener: (context,states){},
        builder: (context,states){

        return  Scaffold(
           body:Column(children:[
             Container(
               height: 150,
               child:  Center(
                 child: Row(
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                     Padding(
                       padding: const EdgeInsets.all(8.0),
                       child: TextButton(onPressed:(){
                         Navigator.pop(context);
                         },
                        child: Text('Login ', style: TextStyle(fontFamily: 'Courgette',color: ColorsManager.defaultColor,fontSize: 30),)),
                     ),
                     Text('OR ', style: TextStyle(color: Colors.grey[600],fontSize: 15),),
                     Padding(
                       padding: const EdgeInsets.all(8.0),
                       child: TextButton(onPressed:(){
                       },child: Text('Register  ', style: TextStyle(fontFamily: 'Courgette',color:ColorsManager.defaultColor,fontSize: 30),)),
                     )

                   ],),
               ),
             ),

            Expanded(
             child:SingleChildScrollView(
             child: Form(
               key: formKey,
               child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                 children: [

                    formField(labelText:'name',PasswordContrroller: nameController, keyboardType: TextInputType.name, prefixIcon: Icons.edit),
                    SizedBox(height: 30,),
                    formField(labelText:'email',PasswordContrroller: emailController, keyboardType: TextInputType.emailAddress, prefixIcon: Icons.email),
                    SizedBox(height: 30,),
                    formField(labelText:'phone',PasswordContrroller: phoneController, keyboardType: TextInputType.emailAddress, prefixIcon: Icons.phone_android_outlined),
                    SizedBox(height: 30,),
                    formField(labelText:'password',PasswordContrroller: passwordController,keyboardType: TextInputType.number, prefixIcon: Icons.lock,suffixIcon: Icons.remove_red_eye),
                    SizedBox(height: 30,),
                 ConditionalBuilder(
                   condition: states != SocialRegisterLoadingState&&states!=SocialRegisterErrorState ,
                   builder: (context) =>LoginRegisterButton(formKey: formKey, Text: text, function: (){
                     if(formKey.currentState!.validate()){
                       ServicesCubit.get(context).socialRegister(
                           name: nameController.text,
                           email: emailController.text,
                           phone: phoneController.text,
                         password:passwordController. text
                           );
                     }
                   }) ,
                   fallback: (context) =>Center(child:  CircularProgressIndicator(color:ColorsManager. defaultColor,))) ,

                    SizedBox(height: 30,),
                    Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                     Text('OR ',style: TextStyle(color: Colors.black45),),
                     Row(
                       mainAxisAlignment: MainAxisAlignment.center,
                       children: [
                         IconButton(onPressed: (){}, icon: Icon(facebook)),
                         MaterialButton(onPressed: (){}, child:  Icon(FontAwesomeIcons.googlePlusG,color: Colors.red,) ,
                         ),



                       ],)
                   ],
                 )
               ],
            ),
             ),
          ),
        )]),

    )
    ;
            }


    ));
  }
}
