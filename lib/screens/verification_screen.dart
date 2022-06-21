import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class Verification extends StatefulWidget {

  @override
  State<Verification> createState() => _VerificationState();
}

class _VerificationState extends State<Verification> {

  bool pressed = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(
                vertical: 20,
                horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 75,
                  child: Image.asset('images/linkedin Logo.png'),
                ),
                SizedBox(
                  height: 30,
                ),
                Visibility(
                  visible: pressed,
                  replacement: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Enter the verification code',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.w500
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        'We sent the verification code to sims@gmail.com.\nEdit email',
                        style: TextStyle(
                            color: Colors.black54,
                            fontSize: 14,
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      TextField(
                        cursorColor: Colors.black45,
                        decoration: InputDecoration(
                          labelText: '6 digit code*',
                          labelStyle: TextStyle(
                              color: Colors.black45
                          ),
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors.black54,
                                  width: 2
                              )
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 300,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            height: 49,
                            width: double.infinity,
                            child: ElevatedButton(
                                onPressed: (){
                                  setState(() {
                                    pressed = true;
                                  });
                                },
                                style: ElevatedButton.styleFrom(
                                    elevation: 0,
                                    primary: Color(0xff0A66C2),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(24),
                                    )
                                ),
                                child: Text(
                                  'Next',
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
                          TextButton(
                              onPressed:(){
                              } ,
                              child: Text(
                                'Resend code',
                                style: TextStyle(
                                    color:Colors.black54,
                                    fontSize: 16
                                ),
                              )
                          )
                        ],
                      )
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Are you looking for a job right now?',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.w500
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        'We can help you prepare for your search, Your response is\nprivate to you',
                        style: TextStyle(
                          color: Colors.black54,
                          fontSize: 14,
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      SizedBox(
                        height: 49,
                        width: double.infinity,
                        child: OutlinedButton(
                            onPressed: (){} ,
                            child: Text(
                              'Yes'
                            ),
                          style: OutlinedButton.styleFrom(
                            side: BorderSide(
                              color: Color(0xff0A66C2)
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadiusDirectional.circular(24)
                            )
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      SizedBox(
                        height: 49,
                        width: double.infinity,
                        child: OutlinedButton(
                          onPressed: (){
                            Get.toNamed('/homepage');
                          } ,
                          child: Text(
                              'Not now'
                          ),
                          style: OutlinedButton.styleFrom(
                              side: BorderSide(
                                  color: Color(0xff0A66C2)
                              ),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadiusDirectional.circular(24)
                              )
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
