import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smart_alarm_empty/Pages/testpage.dart';
import '/Getxcontroller/mybinding.dart';
import '/Pages/home%20page/HomePage.dart';
import '/Pages/splash%20screen/SplashScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      //color: Colors.red,
      debugShowCheckedModeBanner: false,
      initialBinding: mybinding(),
      initialRoute: '/SplashScreen',
      getPages: [
        GetPage(name: '/HomePage', page: () => HomePage()),
        GetPage(name: '/SplashScreen', page: () => Splashscreen()),
        GetPage(name: '/MainPage', page: () => MainPage())
      ],
    );
  }
}

///
///
String theme = 'light';
