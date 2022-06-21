import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class JoinNow extends StatefulWidget {

  @override
  State<JoinNow> createState() => _JoinNowState();
}

class _JoinNowState extends State<JoinNow> {
  bool onPressed1 = true;
  bool onPressed2 = false;
  bool onPressed3 = false;
  bool obscure = false;

  createAlertDialog(BuildContext context){
    return showDialog(context: context, builder: (context)=>AlertDialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10)
      ),
      content: SizedBox(
        height: 200,
        width: 350,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              'User Agreement',
              style: TextStyle(
                fontSize: 18,
                color: Colors.black87
              ),
            ),
            Text(
              'Privacy Policy',
              style: TextStyle(
                fontSize: 18,
                  color: Colors.black87
              ),
            ),
            Text(
              'Cookie Policy',
              style: TextStyle(
                fontSize: 18,
                  color: Colors.black87
              ),
            ),
            Text(
              'Text Notifications',
              style: TextStyle(
                fontSize: 18,
                  color: Colors.black87
              ),
            )
          ],
        ),
      ),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(
              vertical: 20,
              horizontal: 20
            ),
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
                  visible: onPressed1,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Add your name',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 30,
                            fontWeight: FontWeight.w400
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      TextField(
                        cursorColor: Colors.black45,
                        decoration: InputDecoration(
                          labelText: 'First Name*',
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
                        height: 40,
                      ),
                      TextField(
                        cursorColor: Colors.black45,
                        decoration: InputDecoration(
                            labelText: 'Last Name*',
                            labelStyle: TextStyle(
                                color: Colors.black45
                            ),
                            focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                    color: Colors.black54,
                                    width: 2
                                )
                            )

                        ),
                      ),
                    ],
                  ),
                  replacement: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                       onPressed2 ?'Set your password' : 'Add your email or phone',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 30,
                            fontWeight: FontWeight.w400
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      TextField(
                        cursorColor: Colors.black45,
                        decoration: InputDecoration(
                          labelText: 'Email or Phone*',
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
                        height: 40,
                      ),
                      Padding(
                        padding: EdgeInsets.all(0),
                        child: onPressed2 ? Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            TextField(
                              obscureText: obscure,
                              cursorColor: Colors.black54,
                              decoration: InputDecoration(
                                suffixIcon: Visibility(
                                  visible: obscure,
                                  child: IconButton(
                                    onPressed: (){
                                      setState(() {
                                        obscure = !obscure;
                                      });
                                    },
                                    icon:Icon(
                                      Icons.visibility,
                                      color: Colors.black54,
                                    )
                                  ),
                                  replacement: IconButton(
                                      onPressed: (){
                                        setState(() {
                                          obscure = !obscure;
                                        });
                                      },
                                      icon:Icon(
                                        Icons.visibility_off,
                                        color: Colors.black45,
                                      )
                                  ),
                                ),
                                labelText: 'Password*',
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
                              height: 10,
                            ),
                            Text(
                                '6 or more characters',
                              style: TextStyle(
                                color: Colors.black45,
                              ),
                            ),
                            SizedBox(
                              height: 12,
                            ),
                            GestureDetector(
                              onTap: (){
                                createAlertDialog(context);
                              },
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        'By clicking Agree & Join, you agree to the LinkedIn',
                                        style: TextStyle(
                                          color: Colors.black45,
                                          fontSize: 10.5
                                        ),
                                      ),
                                      Text(
                                        ' User Agreement, Privacy',
                                        style: TextStyle(
                                              color: Color(0xff0A66C2),
                                          fontSize: 10.5
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        'Policy,',
                                        style: TextStyle(
                                            color: Color(0xff0A66C2),
                                            fontSize: 10.5
                                        ),
                                      ),
                                      Text(
                                        ' and',
                                        style: TextStyle(
                                            color: Colors.black45,
                                            fontSize: 10.5
                                        ),
                                      ),
                                      Text(
                                        ' Cookie Policy',
                                        style: TextStyle(
                                            color: Color(0xff0A66C2),
                                            fontSize: 10.5
                                        ),
                                      ),
                                      Text(
                                        '. For phone number signups we will send a verification',
                                        style: TextStyle(
                                            color: Colors.black45,
                                            fontSize: 10.5
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                      children: [
                                        Text(
                                          'code via SMS',
                                          style: TextStyle(
                                              color: Colors.black45,
                                              fontSize: 10.5
                                          ),
                                        ),
                                      ]
                                  )
                                ],
                              ),
                            ),

                          ],
                        ) : null ,
                      )
                    ],
                  ) ,
                ),
                SizedBox(
                  height: 40,
                ),
                SizedBox(
                  height: 49,
                  width: double.infinity,
                  child: Visibility(
                    visible: onPressed1,
                    child: ElevatedButton(
                        onPressed: (){
                          setState(() {
                            onPressed1 = false;
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
                          'Continue',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 14
                          ),
                        )
                    ),
                    replacement: Visibility(
                      visible: onPressed2,
                      child: ElevatedButton(
                          onPressed: (){
                           Get.toNamed('/securityCheck');
                          },
                          style: ElevatedButton.styleFrom(
                              elevation: 0,
                              primary: Color(0xff0A66C2),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(24),
                              )
                          ),
                          child: Text(
                             'Agree & Continue',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 14
                            ),
                          )
                      ),
                      replacement: ElevatedButton(
                          onPressed: (){
                            setState(() {
                              onPressed2 = true;
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
                            'Continue',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 14
                            ),
                          )
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
