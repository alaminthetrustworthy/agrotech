import 'package:agrotech/utils/appcolors.dart';
import 'package:agrotech/utils/dimensions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  bool isTap=false;
  String textHolder='hausa languges';
  String causesTitle='Causes';
  String treatmentTitle='Treamment';
  String causesDetail="Black rot is caused by a bacteria, Xanthomonas campestris that can infect most crucifer crops  at any growth stage.  This is difficult for growers to manage and is considered the  most serious disease of  crucifer crops worldwide";
  String treatmentDetails="Black rot is caused by a bacteria, Xanthomonas campestris that can infect most crucifer crops  at any growth stage.  This is difficult for growers to manage and is considered the  most serious disease of  crucifer crops worldwide";
  void changeState(){
    setState(() {
      if(isTap==false){

        causesTitle=causesTitle;
        treatmentTitle=treatmentTitle;
        causesDetail=causesDetail;
        treatmentDetails=treatmentDetails;
        isTap=!isTap;
        print("is tapped in false is $isTap");
        return;

      }else{
        isTap=!isTap;
        // causesTitle='Aifawra';
        // treatmentTitle='kulawa';
        // causesDetail='Aifarwa';
        // treatmentDetails="Yadda zaka kare";
        print("tap in true is $isTap");

      }
      //print("is Tapped change $isTap");
    });
  }
  @override
  Widget build(BuildContext context) {
    var string=".";

    return Scaffold(
      body: Stack(
        children: [
          // Top image
          Positioned(

              child:
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image:
                  AssetImage(
                      "assets/image/capleaf.png"
                  )),
            ),
          )
          ),
          Positioned(
            left: 0,
            right: 0,

            child: Container(
              height: Dimensions.height300,
              width: Dimensions.width300,
              color: Colors.black.withOpacity(0.8),


            ),
          ),
          //logo Positioned
          Positioned(
              top: Dimensions.height60,
              left: Dimensions.height80+5,


              child:Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: Dimensions.height80,
                    width: Dimensions.width45+35,
                    decoration: BoxDecoration(
                        image: DecorationImage(

                            image:AssetImage(
                                "assets/image/logo.png"
                            )
                        )
                    ),
                  ),
                  SizedBox(width: Dimensions.width20,),
                  Container(
                    child: Text(


                      "AGRO BOT",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: Dimensions.font24,
                          color: AppColors.BackgroudColor
                      ),

                    ),
                  )
                ],
              ) ),
          //Background Position
          Positioned(
              top: Dimensions.height200-10,
              left: 0,
              right: 0,
              child: Container(
                height: Dimensions.height400+100,
            decoration: BoxDecoration(
              color: AppColors.BackgroudColor
            ),
          )),
          //label Position
          Positioned(
                top: Dimensions.height200+Dimensions.height10,
                left: Dimensions.width15,
                right: Dimensions.width15,
                child: SingleChildScrollView(
                  child:  Container(
                      padding: EdgeInsets.only(
                          top: Dimensions.height10+2,
                          left: Dimensions.widtht10+2,
                          right: Dimensions.widtht10+2,
                        bottom: Dimensions.height20
                      ),
                      //height: 400,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(Dimensions.radius20),
                          color: Colors.white
                      ),


                    child: Column(
                        children: [
                          Row(

                            mainAxisAlignment: MainAxisAlignment.spaceBetween,

                            children: [
                              //English Conatainer
                              InkWell(
                                onTap:(){
                                  setState(() {
                                    changeState();
                                    // if(isTap==false){
                                    //
                                    //   causesTitle=causesTitle;
                                    //   treatmentTitle=treatmentTitle;
                                    //   causesDetail=causesDetail;
                                    //   treatmentDetails=treatmentDetails;
                                    //   isTap=!isTap;
                                    //   print("is tapped is $isTap");
                                    // }else if(isTap==true){
                                    //   causesTitle='Aifawra';
                                    //   treatmentTitle='kulawa';
                                    //   causesDetail='Aifarwa';
                                    //   treatmentDetails="Yadda zaka kare";
                                    //   isTap=!isTap;
                                    // }
                                  });
                                },
                                child:isTap? Container(
                                    padding:EdgeInsets.only(
                                        left: Dimensions.width45,
                                        right: Dimensions.width45,
                                        top: Dimensions.height10,
                                        bottom: Dimensions.height10
                                    ),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(Dimensions.radius10),
                                        color: AppColors.ButtonColor
                                    ),
                                  child: Text(
                                    "ENGLISH",
                                    style: TextStyle(
                                        color: AppColors.BackgroudColor,
                                        fontWeight: FontWeight.bold
                                    ),

                                    ),

                                  ):Container(
                                  padding:EdgeInsets.only(
                                      left: 45,
                                      right: 45,
                                      top: 10,
                                      bottom: 10
                                  ),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(Dimensions.radius10),
                                      color: AppColors.BackgroudColor,
                                      border: Border.all(color: AppColors.ButtonColor)
                                  ),
                                  child: Text(
                                    "ENGLISH",
                                    style: TextStyle(
                                        color: AppColors.ButtonColor,
                                        fontWeight: FontWeight.bold
                                    ),

                                  ),

                                ),
                              ),

                              //Hausa Container
                              GestureDetector(
                                behavior: HitTestBehavior.translucent,
                                onTap: (){
                                  setState(() {
                                    changeState();
                                  });
                                },
                                child:isTap?Container(
                                  padding: EdgeInsets.only(
                                      left: Dimensions.width45,
                                      right: Dimensions.width45,
                                      top: Dimensions.height10,
                                      bottom: Dimensions.height10
                                  ),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(Dimensions.radius10),
                                      color: AppColors.BackgroudColor,
                                    border: Border.all(color: AppColors.ButtonColor)
                                  ),
                                  child: Text(
                                    "HAUSA",
                                    style: TextStyle(
                                        color: AppColors.ButtonColor,
                                        fontWeight: FontWeight.bold
                                    ),
                                  ),
                                ):Container(
                                  padding: EdgeInsets.only(
                                      left: Dimensions.width45,
                                      right: Dimensions.width45,
                                      top: Dimensions.height10,
                                      bottom: Dimensions.height10
                                  ),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(Dimensions.radius10),
                                      color: AppColors.ButtonColor
                                  ),
                                  child: Text(
                                    "HAUSA",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold
                                    ),

                                  ),
                                ),
                              ),

                            ],
                          ),


                          SizedBox(height: Dimensions.height20+5,),
                          isTap?Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [

                              Container(child:
                                  //causes
                              Text(causesTitle,style: TextStyle(

                                  fontSize: Dimensions.font24,
                                  fontWeight: FontWeight.bold,
                                  color: AppColors.ButtonColor
                              ),))
                            ],
                          ):Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [

                              Container(child:
                              //causes
                              Text("Gwaji cuta",style: TextStyle(

                                  fontSize: Dimensions.font24,
                                  fontWeight: FontWeight.bold,
                                  color: AppColors.ButtonColor
                              ),))
                            ],
                          ),

                          isTap?Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [Text(causesTitle,style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: Dimensions.font16
                            ),),
                          ]):Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [Text("hausaa language",style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: Dimensions.font16
                              ),),
                              ]),

                          isTap?Text(causesDetail):Text("Cuta"),
                          SizedBox(height: Dimensions.height45,),
                          isTap?Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [Text(treatmentTitle,style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: Dimensions.font16
                              ),),
                              ]):Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [Text("Hausa language",style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: Dimensions.font16
                              ),),
                              ]),
                          isTap?Text(treatmentDetails):Text("hausa language"),



                        ],
                      ),

                    ),
                  ),
                ),

        ],
      ),
      //bottom navigation Bar



      bottomNavigationBar: BottomAppBar(

          //clipBehavior: Clip.antiAlias,
          child: BottomNavigationBar( items: [
            BottomNavigationBarItem(icon: Icon(Icons.home,size: Dimensions.height20+4,),
                label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.settings,size: Dimensions.height20+4,),
                label: 'Setting'
            )
          ],
            selectedItemColor: AppColors.ButtonColor,
          )
      ),


    );
  }
}
