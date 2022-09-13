import 'dart:io';

import 'package:agrotech/detail%20page/detail%20page.dart';
import 'package:agrotech/main%20page/main_page.dart';
import 'package:agrotech/utils/appcolors.dart';
import 'package:agrotech/utils/dimensions.dart';
import 'package:camera/camera.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:get/get.dart';

class RetakePage extends StatefulWidget {


  const RetakePage({Key? key,required this.photo}) : super(key: key);

  final XFile photo;
  XFile get photos=>photo;

  @override
  State<RetakePage> createState() => RetakePageState();


}

class RetakePageState extends State<RetakePage> {
   late RetakePage retakePage;



  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    //retakePage=RetakePage(photo:);
  }

  @override
  Widget build(BuildContext context) {
    final ImagePicker _picker = ImagePicker();
    return Scaffold(
      body: Stack(
        children: [
          // Top image
          Positioned(top: Dimensions.height30+5,
              left: Dimensions.widtht10,
              right: Dimensions.widtht10,
              child:
          Container(
            width: Dimensions.width400,
            height: Dimensions.height400+Dimensions.height80,


            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(Dimensions.radius10),
              color: Colors.green,
              border: Border.all(color: AppColors.ButtonColor)
            ),

            child: Image.file(
                fit:BoxFit.cover,
                File(widget.photo.path)),
          )
          ),

          Positioned(
              top:Dimensions.height600-10,
              left: Dimensions.height10,
              right: Dimensions.height10,
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [

                    //Retake Button Container
                    GestureDetector(
                      onTap: ()async{
                        final XFile? photo = await _picker.pickImage(source: ImageSource.camera);

                        if (_picker== null) return;
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (_) => RetakePage(photo: photo!)));
                      },
                      child: Container(
                        margin: EdgeInsets.only(
                            top: 10
                        ),
                        padding: EdgeInsets.only(
                            left: 40,
                            right: 40,
                            top: 10,
                            bottom: 10

                        ),
                        decoration: BoxDecoration(
                            color: AppColors.BackgroudColor,
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(color: AppColors.ButtonColor)
                        ),
                        child: Text("RETAKE",style: TextStyle(
                            color: AppColors.ButtonColor,
                            fontWeight: FontWeight.bold
                        ),),
                      ),
                    ),
                    //Proceed Button Container
                    GestureDetector(
                      onTap: (){
                        Get.offAll(DetailPage());
                      },
                      child: Container(
                        margin: EdgeInsets.only(
                            top: 10
                        ),
                        padding: EdgeInsets.only(
                            left: 40,
                            right:40,
                            top: 10,
                            bottom: 10

                        ),
                        decoration: BoxDecoration(
                            color: AppColors.ButtonColor,
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(color: AppColors.BackgroudColor)
                        ),
                        child: Text("PROCEED",style: TextStyle(
                            color: AppColors.BackgroudColor,
                            fontWeight: FontWeight.bold
                        ),),
                      ),
                    ),
                  ],
                ),
              ))




        ],
      ),
      //bottom navigation Bar
      bottomNavigationBar: BottomAppBar(
          child: BottomNavigationBar( items: [
            BottomNavigationBarItem(icon: Icon(Icons.home),
                label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.settings),
                label: 'Setting'
            )
          ],
            selectedItemColor: AppColors.ButtonColor,
          )
      ),

    );
  }
}
