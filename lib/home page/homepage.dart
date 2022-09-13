import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../main page/main_page.dart';
import '../utils/appcolors.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.BackgroudColor,
      //Main Container
      body: Container(
        margin: EdgeInsets.only(

        ),
        child: Column(
          children: [
            Container(child: Row(
                children:[
                  Container(
                    margin: EdgeInsets.only(
                      top: 100,
                      left: 45
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text("EASY",style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 50
                        ),),
                        Text("SCAN",style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 50
                        ),),
                        Container(
                          margin: EdgeInsets.only(
                            left: 20
                          ),
                          child: Text("DETECT DISEASED CROPS",
                            style: TextStyle(
                                color: AppColors.blueColor
                            ),
                          ),
                        )

                      ],
                    ),
                  ),


                ]
            ),),

            //Design Container
            Container(

              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: EdgeInsets.only(
                      top: 20
                    ),
                    child: Column(
                      children: [
                        Container(

                          width: 52,
                          height: 260,
                          decoration: BoxDecoration(
                            
                              gradient: LinearGradient(
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                  colors: [
                                    AppColors.blueColor,
                                    AppColors.BackgroudColor,


                                  ]),
                              color: AppColors.blueColor,
                              borderRadius: BorderRadius.circular(20)
                          ),

                          //image Column
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                width: 50,
                                height: 50,
                                decoration: BoxDecoration(
                                  image: DecorationImage(image: 
                                  AssetImage("assets/image/img2.png"))
                                ),
                              ),
                              Container(
                                width: 50,
                                height: 50,
                                decoration: BoxDecoration(
                                    image: DecorationImage(image:
                                    AssetImage("assets/image/img1.png"))
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 15,),
                  Container(
                    padding: EdgeInsets.only(
                      top: 70
                    ),
                    child: Column(
                      children: [
                        Container(

                          width: 52,
                          height: 260,
                          decoration: BoxDecoration(
                              gradient: LinearGradient(
                                begin: Alignment.bottomCenter,
                                end: Alignment.topCenter,
                                colors: [
                                  AppColors.ButtonColor,
                                  AppColors.BackgroudColor
                                ]

                              ),



                              borderRadius: BorderRadius.circular(20)
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                width: 50,
                                height: 50,
                                decoration: BoxDecoration(
                                    image: DecorationImage(image:
                                    AssetImage("assets/image/img4.png"))
                                ),
                              ),
                              Container(
                                width: 50,
                                height: 50,
                                decoration: BoxDecoration(
                                    image: DecorationImage(image:
                                    AssetImage("assets/image/img3.png"))
                                ),
                              )
                            ],
                          ),

                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 15,),
                  Container(
                    padding: EdgeInsets.only(
                        top: 20
                    ),
                    child: Column(
                      children: [
                        Container(

                          width: 52,
                          height: 260,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [
                                  AppColors.blueColor,
                              AppColors.BackgroudColor,


                            ]),

                              borderRadius: BorderRadius.circular(20)
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                width: 50,
                                height: 50,
                                decoration: BoxDecoration(
                                    image: DecorationImage(image:
                                    AssetImage("assets/image/img5.png"))
                                ),
                              ),
                              Container(
                                width: 50,
                                height: 50,
                                decoration: BoxDecoration(
                                    image: DecorationImage(image:
                                    AssetImage("assets/image/img6.png"))
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ],),
            ),
          ],
        ),
        
      ),
      bottomNavigationBar: Container(
        height: 100,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            // proceed Container
            GestureDetector(
              onTap: (){
                Get.offAll(()=>MainPage());
              },
              child: Container(
                margin: EdgeInsets.only(
                  right: 20
                ),
                padding: EdgeInsets.only(
                  top: 5,
                  bottom: 5,
                  left: 10,
                  right: 10
                ),

                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: AppColors.ButtonColor
                ),
                child: Row(
                  children: [
                    Text(
                      "Proceed",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                        color: AppColors.BackgroudColor
                      ),
                    ),
                    Icon(Icons.arrow_forward_outlined,
                    color: AppColors.BackgroudColor,)
                  ],
                ),
              ),
            )
          ],
        ),
        decoration: BoxDecoration(
          color: AppColors.BackgroudColor
        ),
      ),
    );
  }
}