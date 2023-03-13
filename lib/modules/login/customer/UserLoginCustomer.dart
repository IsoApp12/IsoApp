import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:project_four/layouts/ServicesLayOut.dart';
import 'package:project_four/shared/component/styles/colorManger.dart';
import 'package:project_four/shared/component/components/widgets.dart';
import 'package:project_four/shared/network/local/ServicesBloc.dart';
import 'package:project_four/shared/network/local/ServicesStates.dart';


class LoginScreenCustomer extends StatelessWidget {
  const   LoginScreenCustomer({Key? key}) : super(key: key);
  static const IconData facebook = IconData(0xe255, fontFamily: 'MaterialIcons');
  static final TextEditingController EmailController= TextEditingController() ;
  static final TextEditingController PassowrdController= TextEditingController() ;
  static var formKey=GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ServicesCubit,ServicesStates>(
      listener: (context,states){},
      builder: (context,states){
        return SafeArea(
          child: Scaffold(
              body: Column(children:[
                Container(
                  height: 150,
                  child:  Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          padding: const EdgeInsets.all(8.0),
                          child: TextButton(onPressed:(){

                          },child: Text('Login ', style: TextStyle(
                              fontFamily: 'Courgette',
                              color: ColorsManager.defaultColorGreen,fontSize: 30),)),
                        ),
                        Text('OR ', style: TextStyle(color: Colors.grey[600],fontSize: 15),),
                        Container(
                          padding: EdgeInsets.all(8),
                          child: TextButton(onPressed:(){
                            ServicesCubit.get(context) . NavigateToRegister(context);
                          },child: Text('Register  ', style: TextStyle(fontFamily: 'Courgette',color:ColorsManager. defaultColorGreen,fontSize: 30),)),
                        )

                      ],),
                  ),
                ),
                Expanded(
                  child: SingleChildScrollView(
                      child: Form(
                        key: formKey,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(height: 30,),
                            formField(labelText:'email',PasswordContrroller: EmailController, keyboardType: TextInputType.text, prefixIcon: Icons.email),
                            SizedBox(height: 30,),
                            formField(labelText:'password',PasswordContrroller: PassowrdController,keyboardType:TextInputType.visiblePassword, prefixIcon: Icons.lock ,suffixIcon: Icons.remove_red_eye),
                            SizedBox(height: 30,),
                            ConditionalBuilder(
                              condition:states != ServicesLoginLoadingState ,
                              fallback: (context)=>CircularProgressIndicator(color: ColorsManager.defaultColorGreen,),
                              builder:( context)=> LoginRegisterButton(formKey:formKey, Text: Text('Login',style: TextStyle(fontFamily: 'Courgette',fontSize: 18,color:ColorsManager.defaultColorGreen)),
                                  function: () {
                                if (formKey.currentState!.validate()) {
                                  ServicesCubit.get(context).socialLogin(email:EmailController.text ,password:PassowrdController.text );
                                  Navigator.push(context, MaterialPageRoute(builder: (context)=>ServicesLayOut()));
                                }
                              } ) ,

                            )
                            ,
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text('forget your password ', style: TextStyle(color: Colors.grey[600],fontSize: 15),),
                                TextButton(onPressed: (){

                                }, child: Text('find your account',style: TextStyle(color: ColorsManager.defaultColorGreen,fontSize: 15),),)
                              ],),
                            SizedBox(height: 5,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                IconButton(onPressed: (){}, icon: Icon(facebook,),),
                                MaterialButton(onPressed: (){}, child:  Icon(FontAwesomeIcons.googlePlusG,color:ColorsManager.defaultColorYellow,) ,
                                ),




                              ],)
                          ],
                        ),
                      )),
                ),
              ])),
        );
      },
    ) ;

  }
}