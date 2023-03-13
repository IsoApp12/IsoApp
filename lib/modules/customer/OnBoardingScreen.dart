import 'package:flutter/material.dart' hide BoxDecoration, BoxShadow;
import 'package:project_four/app/MyApp.dart';
import 'package:project_four/modules/first_screen/first_screen.dart';
import 'package:project_four/modules/login/customer/UserLoginCustomer.dart';
import 'package:project_four/shared/component/styles/colorManger.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
class onBoardingModel{
  Widget? image;
  String? title;
  onBoardingModel({required Image image,required String title}){
    this.image=image;
    this.title=title;
  }

}
class onBoardingScreen extends StatefulWidget {
  @override
  State<onBoardingScreen> createState() => _onBoardingScreenState();
}

class _onBoardingScreenState extends State<onBoardingScreen> {
  List <onBoardingModel> images=[
    onBoardingModel(image: Image(image: AssetImage('assests/images/order-service.png')),title: 'order services online'),
    onBoardingModel(image:Image(image: AssetImage('assests/images/filter.png')),title: 'Filter to find the best offer'),
    onBoardingModel(image: Image(image:AssetImage('assests/images/logo.jpg')),title: 'OR ,you can find online jobs!')
  ];

  var  pageController= PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body:
        Column(
            children: [
              Expanded(
                child: PageView.builder(
                  controller: pageController,
                  itemBuilder: (context,index)=>onBoardingItem(images[index]),
                  itemCount: images.length,
                  onPageChanged: (int index){
                    if(index==images.length-1){
                      setState((){
                        MyApp(). isLast= true;
                      });
                    }else{
                      MyApp(). isLast=false;
                    }

                  },
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.all( 20),
                    child: SmoothPageIndicator(
                      controller: pageController,
                      count: images.length,
                      effect: ExpandingDotsEffect(
                        activeDotColor:ColorsManager.defaultColorGreen,
                        expansionFactor: 4,
                        dotColor: Colors.grey,
                        dotHeight: 10,

                      ),
                    ),
                  ),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.all(25.0),
                    child: FloatingActionButton(
                        child: Icon(Icons.arrow_forward_ios,color: Colors.white,),
                        backgroundColor:ColorsManager.defaultColorGreen,
                        onPressed: (){
                          if( MyApp(). isLast){
                            Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context)=> FirstScreen()), (route) => false);
                          }else
                          {
                            pageController.nextPage(duration: Duration(milliseconds: 750), curve: Curves.fastLinearToSlowEaseIn);
                          }
                        }),

                  )
                ],
              ),



            ]
        )

    );
  }

  onBoardingItem(onBoardingModel model)=>
      Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            Expanded(
                child:model.image!
            ),
            SizedBox(height: 30,),
            Padding(
              padding: const EdgeInsetsDirectional.only(start:15,bottom: 50),
              child: Text('${model.title}',style: TextStyle(color: Colors.grey[700],fontWeight: FontWeight.bold,fontSize: 30),),
            ),
          ],
        ),
      );
}