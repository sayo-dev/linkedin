import 'package:flutter/material.dart';
import 'package:linkedin/screens/getstarted_screen.dart';
import 'package:linkedin/screens/homepage_screen.dart';
import 'package:linkedin/screens/joinnow_screen.dart';
import 'package:linkedin/screens/location_screen.dart';
import 'package:linkedin/screens/securitycheck_screen.dart';
import 'package:linkedin/screens/splashscreen.dart';
import 'package:get/get.dart';
import 'package:linkedin/screens/verification_screen.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
     debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color(0xff0A66C2)
      ),
      initialRoute: '/splashScreen',
      getPages: [
        GetPage(name: '/splashScreen', page: ()=> SplashScreen()),
        GetPage(name: '/getStarted', page: ()=> GetStarted()),
        GetPage(name: '/joinNow', page: () => JoinNow()),
        GetPage(name: '/securityCheck', page: () => SecurityCheck()),
        GetPage(name: '/location', page: () => Location()),
        GetPage(name: '/verification', page: () => Verification()),
        GetPage(name: '/homepage', page: () => Homepage()),
        // GetPage(name: '/start', page: () => Started())
      ]

    );
  }
}


