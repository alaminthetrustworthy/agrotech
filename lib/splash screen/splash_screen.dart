import 'package:agrotech/home%20page/homepage.dart';
import 'package:agrotech/utils/appcolors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:page_transition/page_transition.dart';

class Splash_Screen extends StatelessWidget {
  const Splash_Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.BackgroudColor,
      body: AnimatedSplashScreen(
        backgroundColor: AppColors.BackgroudColor,
        splash:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                  image: DecorationImage(image:AssetImage(
                    "assets/image/logo.png",

                  ))
              ),
            ),
            Container(
              child: Text("AGRO TECH",style: TextStyle(
                  color: AppColors.greenColor,
                  fontWeight: FontWeight.bold
              ),),
            )
          ],
        ),
        nextScreen: HomePage(),
        splashIconSize: 250,
        pageTransitionType: PageTransitionType.topToBottom,
        animationDuration: const Duration(seconds: 3),
        duration: 4000,
      )


    );
  }
}
