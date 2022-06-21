import 'dart:async';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'getstarted_screen.dart';

class SplashScreen extends StatefulWidget {

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

    @override
    void initState() {
      // TODO: implement initState
      super.initState();

      Timer(
          Duration(
              seconds: 3
          ),
              () => Get.toNamed('/getStarted')
      );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Image(
          image: AssetImage('images/linkedin Logo.png'),
        ),
      ),
    );
  }
}
