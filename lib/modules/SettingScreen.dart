import 'package:flutter/material.dart' hide BoxDecoration, BoxShadow;
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart';
import 'package:project_four/modules/MyProfileCustomer.dart';
import 'package:project_four/shared/component/colorManger.dart';
class setting extends StatelessWidget {
  const setting({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          leading: Icon(Icons.settings,color:ColorsManager. defaultColor2,),
          elevation: 0.0,
          backgroundColor: Colors.white,
          title:Text('Settings',style: TextStyle(fontSize: 28,fontFamily: 'courgette',fontWeight: FontWeight.w600,color:ColorsManager. defaultColor),)),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child:Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      color: Colors.grey[100]
                  ),
                  child: Row(
                    children: [
                      CircleAvatar(
                        radius: 40,
                        backgroundImage: AssetImage('assests/images/medical.jpg'),
                      ),
                      SizedBox(width: 20,),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Hend Shoep',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 23,color: ColorsManager.defaultColor),),
                          SizedBox(height: 10,),

                          Text('Hendshoep@gmail.com',style: TextStyle(fontSize: 17,color:ColorsManager. defaultColor),),
                        ],
                      ),
                      Spacer(),
                      Container(child:IconButton(onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> MyprofileCustomer()));
                      }, icon: Icon(Icons.arrow_forward_ios,color: ColorsManager.defaultColor2,) ,
                      ),
                        decoration: BoxDecoration(
                            color: Colors.grey[200],
                            shape: BoxShape.circle
                        ),
                      )

                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30,right: 30,bottom: 20),
                  child: Row(
                    children: [
                      Icon(Icons.notifications_none,color:ColorsManager. defaultColor2,),
                      SizedBox(width: 20,),
                      Text(
                        'Notification',style: TextStyle(fontWeight: FontWeight.w700,fontSize: 20,color:ColorsManager. defaultColor),),
                      Spacer(),
                      IconButton(icon: Icon(Icons.arrow_forward_ios,color:ColorsManager. defaultColor2,),onPressed: (){},)


                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 30,bottom: 20),
                  child: Row(
                    children: [
                      Icon(Icons.lock,color:ColorsManager. defaultColor2,),
                      SizedBox(width: 20,),
                      Text(
                        'Data & security',style: TextStyle(fontWeight: FontWeight.w700,fontSize: 20,color:ColorsManager. defaultColor),),
                      Spacer(),
                      IconButton(icon: Icon(Icons.arrow_forward_ios,color:ColorsManager. defaultColor2,),onPressed: (){},)

                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 30,bottom: 20),
                  child: Row(
                    children: [
                      Icon(Icons.privacy_tip_outlined,color: ColorsManager.defaultColor2,),
                      SizedBox(width: 20,),
                      Text(
                        'privacy',style: TextStyle(fontWeight: FontWeight.w700,fontSize: 20,color: ColorsManager.defaultColor),),
                      Spacer(),
                      IconButton(icon: Icon(Icons.arrow_forward_ios,color:ColorsManager. defaultColor2,),onPressed: (){},)

                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 30,bottom: 10),
                  child: Row(
                    children: [
                      Icon(Icons.dark_mode,color:ColorsManager. defaultColor2,),
                      SizedBox(width: 20,),
                      Text(
                        'theme mode',style: TextStyle(fontWeight: FontWeight.w700,fontSize: 20,color:ColorsManager. defaultColor),),
                      Spacer(),
                      IconButton(icon: Icon(Icons.arrow_forward_ios,color:ColorsManager. defaultColor2,),onPressed: (){},)

                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.only(start:50,bottom: 20,end: 30),
                  child: Row(
                    children: [


                      Text(
                        'Log out',style: TextStyle(fontWeight: FontWeight.w700,fontSize: 20,color:ColorsManager. defaultColor),),
                      Spacer(),
                      IconButton(icon: Icon(Icons.logout_outlined,color:ColorsManager. defaultColor2,),onPressed: (){},)

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
                        'report bug',style: TextStyle(fontWeight: FontWeight.w700,fontSize: 20,color: ColorsManager.defaultColor),),
                      Spacer(),
                      IconButton(icon: Icon(Icons.arrow_forward_ios,color:ColorsManager. defaultColor2,),onPressed: (){},)

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