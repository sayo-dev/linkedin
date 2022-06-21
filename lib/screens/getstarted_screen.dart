import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GetStarted extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Image.asset('images/linkedin Logo.png'),
                Text(
                  'Join a trusted community of 800M\nprofessionals',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 18
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    SizedBox(
                      height: 49,
                      width: double.infinity,
                      child: ElevatedButton(
                          onPressed: (){
                            Get.toNamed('/joinNow');
                          },
                          style: ElevatedButton.styleFrom(
                            elevation: 0,
                            primary: Color(0xff0A66C2),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(24),
                            )
                          ),
                          child: Text(
                            'Join now',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14
                            ),
                          )
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    SizedBox(
                      height: 49,
                      width: double.infinity,
                      child: ElevatedButton(
                          onPressed: (){

                          },
                          style: ElevatedButton.styleFrom(
                            elevation: 0,
                              primary: Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                                side: BorderSide(
                                  color: Colors.black87
                                )

                              )
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset('images/google.png'),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                'Continue with Google',
                                style: TextStyle(
                                    color: Colors.black87,
                                    fontSize: 14
                                ),
                              ),
                            ],
                          )
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    TextButton(
                        onPressed:(){} ,
                        child: Text(
                          'Sign In',
                          style: TextStyle(
                            color:Color(0xff0A66C2),
                            fontSize: 14
                          ),
                        )
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
