import 'package:flutter/material.dart' hide BoxDecoration, BoxShadow;
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart';
import 'package:project_four/modules/customer/AccountCustomer.dart';
import 'package:project_four/modules/first_screen/first_screen.dart';
import 'package:project_four/shared/component/components/text.dart';
import 'package:project_four/shared/component/styles/colorManger.dart';
class SettingProvider extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          leading: Icon(Icons.settings,color:ColorsManager. defaultColorYellow,),
          elevation: 0.0,
          backgroundColor: Colors.white,
          title:Text('Settings',style: TextStyle(fontSize: 28,fontFamily: 'courgette',fontWeight: FontWeight.w600,color:ColorsManager. defaultColorGreen),)),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child:Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> AccountCustomer()));
                  },
                  child: Container(
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        color: Colors.grey[100]
                    ),
                    child: Row(
                      children: [
                        CircleAvatar(
                          radius: 40,
                          backgroundImage: AssetImage('assests/images/photo.jpg'),
                        ),
                        SizedBox(width: 20,),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            MyTextStyle(text: "Amira Ahmed",lines: 1,fontSize: 23,color: ColorsManager.defaultColorGreen),
                            SizedBox(height: 10,),

                            Text('AmiraAhmed@gmail.com',style: TextStyle(fontSize: 17,color:ColorsManager. defaultColorGreen),),
                          ],
                        ),

                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30,right: 30,bottom: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Icon(Icons.notifications_none,color:ColorsManager. defaultColorYellow,),
                      SizedBox(width: 20,),
                      Text(
                        'Notification',style: TextStyle(fontWeight: FontWeight.w700,fontSize: 20,color:ColorsManager. defaultColorGreen),),
                      Spacer(),
                      IconButton(icon: Icon(Icons.arrow_forward_ios,color:ColorsManager. defaultColorYellow,),onPressed: (){},)


                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 30,bottom: 20),
                  child: Row(
                    children: [
                      Icon(Icons.lock,color:ColorsManager. defaultColorYellow,),
                      SizedBox(width: 20,),
                      Text(
                        'Data & security',style: TextStyle(fontWeight: FontWeight.w700,fontSize: 20,color:ColorsManager. defaultColorGreen),),
                      Spacer(),
                      IconButton(icon: Icon(Icons.arrow_forward_ios,color:ColorsManager. defaultColorYellow,),onPressed: (){},)

                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 30,bottom: 20),
                  child: Row(
                    children: [
                      Icon(Icons.privacy_tip_outlined,color: ColorsManager.defaultColorYellow,),
                      SizedBox(width: 20,),
                      Text(
                        'privacy',style: TextStyle(fontWeight: FontWeight.w700,fontSize: 20,color: ColorsManager.defaultColorGreen),),
                      Spacer(),
                      IconButton(icon: Icon(Icons.arrow_forward_ios,color:ColorsManager. defaultColorYellow,),onPressed: (){},)

                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 30,bottom: 10),
                  child: Row(
                    children: [
                      Icon(Icons.dark_mode,color:ColorsManager. defaultColorYellow,),
                      SizedBox(width: 20,),
                      Text(
                        'theme mode',style: TextStyle(fontWeight: FontWeight.w700,fontSize: 20,color:ColorsManager. defaultColorGreen),),
                      Spacer(),
                      IconButton(icon: Icon(Icons.arrow_forward_ios,color:ColorsManager. defaultColorYellow,),onPressed: (){},)

                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 30,bottom: 10,left: 50),
                  child: Row(
                    children: [
                      Text(
                        'Log out',style: TextStyle(fontWeight: FontWeight.w700,fontSize: 20,color:ColorsManager. defaultColorGreen),),
                      Spacer(),
                      IconButton(icon: Icon(Icons.logout_outlined,color:ColorsManager. defaultColorYellow,),onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>FirstScreen()));
                      },)

                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 1,
                    width: double.infinity,
                    color: Colors.grey,
                  ),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.only(start:30,top: 20,bottom: 30,end: 30),
                  child: Row(
                    children: [


                      Text(
                        'report bug',style: TextStyle(fontWeight: FontWeight.w700,fontSize: 20,color: ColorsManager.defaultColorGreen),),
                      Spacer(),
                      IconButton(icon: Icon(Icons.arrow_forward_ios,color:ColorsManager. defaultColorYellow,),onPressed: (){},)

                    ],
                  ),
                ),

              ],),
          ),
        ),
      ) ,
    );
  }
}