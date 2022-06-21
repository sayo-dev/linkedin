import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class SecurityCheck extends StatefulWidget {

  @override
  State<SecurityCheck> createState() => _SecurityCheckState();
}

class _SecurityCheckState extends State<SecurityCheck> {

  bool pressed = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
            vertical: 20,
              horizontal: 20),
          child: Column(
            children: [
              Center(
                child: Text(
                  'Let\'s do a quick security check ',
                  style: TextStyle(
                    color: Colors.black87,
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                padding: EdgeInsets.all(15),
                height: 250,
                width: double.infinity,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.black54
                  )
                ),
                child: Visibility(
                  visible: pressed,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        'Verification',
                        style: TextStyle(
                          fontSize: 45,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                      Text(
                        'Please solve this puzzle so we know you are a real\n person',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400
                        ),
                      ),
                      OutlinedButton(
                          onPressed: (){
                            Get.toNamed('/location');
                          },
                          child: Text(
                            'Verify',
                            style: TextStyle(
                              color: Colors.black87
                            ),
                          ),
                        style: OutlinedButton.styleFrom(
                          side: BorderSide(
                            color: Colors.black54
                          )
                        ),
                      )
                    ],
                  ),
                  replacement: Column(
                    children: [
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'Press Play and type what you hear:',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontWeight: FontWeight.w400
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        height: 30,
                        width: 60,
                        child: OutlinedButton(
                          onPressed: (){
                          },
                          child: Text(
                            'Play',
                            style: TextStyle(
                                color: Colors.black87,
                              fontSize: 13
                            ),
                          ),
                          style: OutlinedButton.styleFrom(
                              side: BorderSide(
                                  color: Colors.black54
                              )
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Challenge Answer',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontWeight: FontWeight.w400
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      SizedBox(
                        height: 30,
                        width: 200,
                        child: TextField(
                          cursorColor: Colors.black45,
                          cursorHeight: 1,
                          cursorWidth: 2,
                          decoration: InputDecoration(
                           border: OutlineInputBorder(
                             borderSide: BorderSide(
                               color: Colors.black54
                             )
                           ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.red
                              )
                            )
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        height: 30,
                        width: 70,
                        child: OutlinedButton(
                          onPressed: (){
                          },
                          child: Text(
                            'Verify',
                            style: TextStyle(
                                color: Colors.black87,
                                fontSize: 13
                            ),
                          ),
                          style: OutlinedButton.styleFrom(
                              side: BorderSide(
                                  color: Colors.black54
                              )
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        height: 30,
                        width: 140,
                        child: OutlinedButton(
                          onPressed: (){
                          },
                          child: Text(
                            'Download Sound',
                            style: TextStyle(
                                color: Colors.black87,
                                fontSize: 13
                            ),
                          ),
                          style: OutlinedButton.styleFrom(
                              side: BorderSide(
                                  color: Colors.black54
                              )
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Visibility(
                  visible: pressed,
                  child: IconButton(
                      onPressed: (){
                        setState(() {
                          pressed = false;
                        });
                      },
                      icon: Icon(
                        Icons.volume_up,
                        color: Colors.black45,
                        size: 17,
                      )
                  ),
                  replacement: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Icon(
                        Icons.replay,
                        color: Colors.black45,
                        size: 17,
                      ),
                      IconButton(
                          onPressed: (){
                            setState(() {
                              pressed = true;
                            });
                          },
                          icon: Icon(
                            Icons.volume_off,
                            color: Colors.black45,
                            size: 17,
                          )
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
