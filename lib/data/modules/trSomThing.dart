import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class trSomeThing extends StatelessWidget {
  const trSomeThing({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffcfd8dc),
     body: Center(child:
       Positioned(
         // emailinputMbh (28:0)
         left:  24,
         top:  141,
         child:
         Container(
           padding:  EdgeInsets.fromLTRB(16, 16, 16, 16),
           width:  252,
           height:  48,
           decoration:  BoxDecoration (
             color:  Color(0xffcfd8dc),
             borderRadius:  BorderRadius.circular(16),
             boxShadow:  [
               BoxShadow(
                 color:  Color(0x99bbc3ce),
                 offset:  Offset(4, 4),
                 blurRadius:  6,
               ),
               BoxShadow(
                 color:  Color(0xccfdffff),
                 offset:  Offset(-4, -4),
                 blurRadius:  6,
               ),
             ],
           ),
           child:
           Text(
             'Email',
             style:TextStyle (
               fontSize:25  ,
               fontWeight:  FontWeight.w700,
               height:  13,
               letterSpacing:  1,
               color:  Color(0xff90a4ae),
             ),
           ),
         ),
       ),
     ),
    );
  }
}
