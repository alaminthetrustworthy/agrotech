import 'package:agrotech/home%20page/homepage.dart';
import 'package:agrotech/retake%20page/retake_page.dart';
import 'package:agrotech/splash%20screen/splash_screen.dart';
import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'detail page/detail page.dart';
import 'main page/main_page.dart';

var firtCamera;
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Obtain a list of the available cameras on the device.
  final cameras = await availableCameras();

  // Get a specific camera from the list of available cameras.
  firtCamera = cameras.first;
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    XFile? photo;
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home:DetailPage()

    );
  }
}
