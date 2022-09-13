import 'package:agrotech/retake%20page/retake_page.dart';
import 'package:agrotech/utils/appcolors.dart';
import 'package:agrotech/utils/dimensions.dart';
import 'package:camera/camera.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:get/get.dart';

import '../models/plants_models.dart';

class MainPage extends StatefulWidget {

  const MainPage({Key? key,}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final ImagePicker _picker = ImagePicker();
  List<PlantsModel> plants=[
    PlantsModel( "1", "assets/image/img1.png" ,  "Rice",  "Shinakafa",false),
    PlantsModel( "2","assets/image/img2.png" ,  "Beans",  "Wake",false),
    PlantsModel(" 3", "assets/image/img3.png" ,  "millet", "Hasi",false),
    PlantsModel( "4", "assets/image/img4.png" ,  "Guinea",  "Dawa",false),
    PlantsModel( "5","assets/image/img5.png" ,  "Rice", "Shinakafa",false),
    PlantsModel( "6", "assets/image/img6.png" ,  "Rice",  "Shinakafa",false),
    PlantsModel( "7", "assets/image/img1.png" ,  "Rice",  "Shinakafa",false),
    PlantsModel( "8", "assets/image/img2.png" ,  "Rice",  "Shinakafa",false),
    PlantsModel( "9", "assets/image/img3.png" ,  "Rice",  "Shinakafa",false),
    PlantsModel( "10", "assets/image/img4.png" ,  "Rice", "Shinakafa",false),
    PlantsModel( "5","assets/image/img5.png" ,  "Rice", "Shinakafa",false),
    PlantsModel( "6", "assets/image/img6.png" ,  "Rice",  "Shinakafa",false),
    PlantsModel( "7", "assets/image/img1.png" ,  "Rice",  "Shinakafa",false),
    PlantsModel( "8", "assets/image/img2.png" ,  "Rice",  "Shinakafa",false),
    PlantsModel( "9", "assets/image/img3.png" ,  "Rice",  "Shinakafa",false),
    PlantsModel( "10", "assets/image/img4.png" ,  "Rice", "Shinakafa",false),
  ];

  List<PlantsModel> isSelectedPlants=[];
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {

    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.BackgroudColor,
      body:CustomScrollView(
        slivers: [
          SliverAppBar(

            backgroundColor: AppColors.ButtonColor,
            pinned: true,
            expandedHeight: Dimensions.height200,
            bottom: PreferredSize(child: Container(
              height: Dimensions.height20,
              decoration: BoxDecoration(
                color: AppColors.BackgroudColor,
                  borderRadius: BorderRadius.only(
              topLeft: Radius.circular(Dimensions.radius10),
                topRight: Radius.circular(Dimensions.radius10)
            )
              ),
            ), preferredSize: Size.fromHeight(Dimensions.height20)),
          flexibleSpace: FlexibleSpaceBar(

            // Container(
            //   height: 20,
            //   width: 20,
            //   decoration: BoxDecoration(
            //       image: DecorationImage(image: AssetImage(
            //           "assets/image/logo.jpg"
            //       ))
            //   ),
            //
            // ),
            background: Container(
              decoration: BoxDecoration(

                image: DecorationImage(
                  fit: BoxFit.cover,
                    image: AssetImage("assets/image/capleaf.png",

                ))
              ),
              child:Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: Dimensions.height80,
                    width: Dimensions.height80,
                    decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage(
                        "assets/image/logo.png"
                      ))
                    ),
                  ),
                  SizedBox(width: Dimensions.width20,),
                  Container(
                    decoration: BoxDecoration(
                      
                    ),
                    child: Text("AGRO BOT",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: Dimensions.font24,
                      color: Colors.white
                    ),),
                  )
                ],
              )
            )
          ),
          ),
          SliverToBoxAdapter(
            child:
                SingleChildScrollView(
                  child: Container(

                    decoration: BoxDecoration(
                        color:AppColors.BackgroudColor

                    ),
                    child: Container(
                      margin: EdgeInsets.only(
                        top: Dimensions.height10,
                        left: Dimensions.widtht10,
                        right: Dimensions.widtht10
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(Dimensions.radius10),
                              topRight: Radius.circular(Dimensions.radius10)
                          )
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          //Searcch Container
                          Container(
                            margin: EdgeInsets.fromLTRB(
                            Dimensions.widtht10,
                                Dimensions.height10/2,
                                Dimensions.widtht10,
                                Dimensions.height10/2),

                           child: TextField(
                             controller: TextEditingController(

                             ),
                             decoration: InputDecoration(
                               labelText: 'Seach plants',
                               prefixIcon: Icon(Icons.search,size: Dimensions.font24,),
                               border: OutlineInputBorder(
                                 borderRadius: BorderRadius.circular(Dimensions.radius10),
                                 borderSide: BorderSide(color: AppColors.BackgroudColor)
                               ),
                             ),
                             onChanged: SeachPlants,
                           ),

                          ),
                          //ListView Conntainer
                         SingleChildScrollView(
                           child: Container(
                             child: ListView.builder(
                               physics: NeverScrollableScrollPhysics(),
                                  itemCount: plants.length,
                                    shrinkWrap: true,
                                    itemBuilder: (context,index){
                                 final plant=plants[index];
                                  return SingleChildScrollView(

                                    child: Container(
                                      margin: EdgeInsets.only(
                                        top: Dimensions.height10/2,
                                        bottom: Dimensions.height10/2
                                      ),
                                      padding: EdgeInsets.only(
                                        top: Dimensions.height10/2,
                                        bottom: Dimensions.height10,
                                        left: Dimensions.widtht10/2,
                                        right: Dimensions.widtht10/2
                                      ),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(plants[index].sn.toString()),
                                          Container(
                                            width: Dimensions.height26,
                                            height: Dimensions.width26,
                                            decoration: BoxDecoration(
                                              image: DecorationImage(image: AssetImage(
                                                plants[index].image
                                              ))
                                          ),),

                                          Text(plants[index].englishName),
                                          Text("---"),
                                          Text(plants[index].hausaName),
                                          //Button Container
                                          plants[index].isSelected?GestureDetector(

                                              onTap: (){
                                                setState(() {
                                                  plants[index].isSelected=!plants[index].isSelected;

                                                  if(plants[index].isSelected==true){
                                                    isSelectedPlants.add(PlantsModel(
                                                        plants[index].sn,
                                                        plants[index].image,
                                                        plants[index].englishName,
                                                        plants[index].hausaName,
                                                        plants[index].isSelected));
                                                  }else if(plants[index].isSelected==false){
                                                    isSelectedPlants.removeWhere((element) => element.sn==plants[index].sn);

                                                  }

                                                });

                                            },
                                            child: Container(
                                                padding: EdgeInsets.only(
                                                    left: Dimensions.widtht10/3,
                                                    right: Dimensions.widtht10/3,
                                                    top: Dimensions.height10/2,
                                                    bottom: Dimensions.height10/2
                                                ),
                                                decoration: BoxDecoration(
                                                    color: AppColors.ButtonColor,
                                                    borderRadius: BorderRadius.circular(5)
                                                ),
                                                child: Text("Selected",style: TextStyle(
                                                    color: Colors.white,
                                                    fontWeight: FontWeight.bold
                                                ),),

                                              ),

                                          ):GestureDetector(

                                            onTap: (){
                                              setState(() {
                                                plants[index].isSelected=!plants[index].isSelected;

                                                if(plants[index].isSelected==true){
                                                  isSelectedPlants.add(PlantsModel(
                                                      plants[index].sn,
                                                      plants[index].image,
                                                      plants[index].englishName,
                                                      plants[index].hausaName,
                                                      plants[index].isSelected));
                                                }else if(plants[index].isSelected==false){
                                                  isSelectedPlants.removeWhere((element) => element.sn==plants[index].sn);

                                                }

                                              });

                                            },
                                            child: Container(
                                              padding: EdgeInsets.only(
                                                  left: Dimensions.widtht10/3,
                                                  right: Dimensions.widtht10/3,
                                                  top: Dimensions.height10/2,
                                                  bottom: Dimensions.height10/2
                                              ),
                                              decoration: BoxDecoration(
                                                  color: AppColors.yellowColor,
                                                  borderRadius: BorderRadius.circular(5)
                                              ),
                                              child: Text("select",style: TextStyle(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.bold
                                              ),),
                                            ),
                                          ),

                                        ],
                                      ),
                                    ),
                                  );
                                }),
                           ),
                         ) ,

                        ],
                      ),
                    ),
                  ),
                ),

            )

        ],
      ),
      //bottom navigation Bar


        floatingActionButton: FloatingActionButton(
          clipBehavior: Clip.antiAlias,
          backgroundColor: AppColors.ButtonColor,
          onPressed: () async{
            final XFile? photo = await _picker.pickImage(source: ImageSource.camera);

            if (_picker== null) return;
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (_) => RetakePage(photo: photo!)));
          },
          child: Icon(Icons.camera_alt_outlined),
        ),
      bottomNavigationBar: BottomAppBar(
          notchMargin: Dimensions.height10,
          shape: CircularNotchedRectangle(),
          //clipBehavior: Clip.antiAlias,
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
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

    );
  }
  void SeachPlants(String query){
    final  suggestion=plants.where((plant) {
      final plantTile=plant.englishName.toLowerCase();
      final input=query.toLowerCase();
      return plantTile.contains(input);
    }).toList();
    setState(() {
      plants=suggestion;
    });
  }
}
