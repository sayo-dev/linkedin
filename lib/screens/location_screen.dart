import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:flutter_switch/flutter_switch.dart';

class Location extends StatefulWidget {

  @override
  State<Location> createState() => _LocationState();
}

class _LocationState extends State<Location> {

  bool pressed = true;
  bool toggle = false;
  bool next = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding:  EdgeInsets.symmetric(
             horizontal: 20,
              vertical: 20
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
                  visible: next,
                  replacement: Visibility(
                    visible: pressed,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Confirm your location',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                             fontWeight: FontWeight.w500
                          ),
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        Text(
                          'See people, jobs, and news in your area',
                          style: TextStyle(
                              color: Colors.black54,
                              fontSize: 13
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        TextField(
                          cursorColor: Colors.black45,
                          decoration: InputDecoration(
                            labelText: 'Location*',
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
                          height: 100,
                        ),
                        SizedBox(
                          height: 49,
                          width: double.infinity,
                          child: ElevatedButton(
                              onPressed: (){
                                setState(() {
                                  pressed = false;
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
                      ],
                    ),
                    replacement: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Your profile helps you discover\n people and opportunities',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.w500
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'I\'m a student',
                              style: TextStyle(
                                  color: Colors.black54,
                                  fontSize: 13
                              ),
                            ),
                            Row(
                              children: [
                                Visibility(
                                  visible: toggle,
                                  child: Text(
                                    'Yes',
                                    style: TextStyle(
                                        color: Colors.black54,
                                        fontSize: 13
                                    ),
                                  ),
                                  replacement: Text(
                                    'No',
                                    style: TextStyle(
                                        color: Colors.black54,
                                        fontSize: 13
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                FlutterSwitch(
                                  height: 30,
                                    width: 50,
                                    inactiveToggleColor: Colors.black,
                                    inactiveColor: Colors.black12,
                                    activeColor: Colors.black12,
                                    activeToggleColor: Colors.green,
                                    value: toggle,
                                    onToggle: (val){
                                      setState(() {
                                       toggle = val;
                                      });
                                    }
                                ),
                              ],
                            )
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Visibility(
                          visible: toggle,
                          child: Column(
                            children: [
                              TextField(
                                cursorColor: Colors.black45,
                                decoration: InputDecoration(
                                  labelText: 'University or school*',
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
                                height: 20,
                              ),
                              TextField(
                                cursorColor: Colors.black45,
                                decoration: InputDecoration(
                                  labelText: 'Degree*',
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
                                height: 20,
                              ),
                              TextField(
                                cursorColor: Colors.black45,
                                decoration: InputDecoration(
                                  labelText: 'Specialization*',
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
                                height: 20,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  SizedBox(
                                    width: 150,
                                    child: TextField(
                                      cursorColor: Colors.black45,
                                      decoration: InputDecoration(
                                        labelText: 'Start year*',
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
                                  ),
                                  SizedBox(
                                    width: 150,
                                    child: TextField(
                                      cursorColor: Colors.black45,
                                      decoration: InputDecoration(
                                        labelText: 'End year*',
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
                                  ),
                                ],
                              ),
                            ],
                          ) ,
                          replacement: TextField(
                            cursorColor: Colors.black45,
                            decoration: InputDecoration(
                              labelText: 'Most recent job title*',
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
                        ),

                        SizedBox(
                          height: 100,
                        ),
                        SizedBox(
                          height: 49,
                          width: double.infinity,
                          child: ElevatedButton(
                              onPressed: (){
                                setState(() {
                                  next = true;
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
                      ],
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Adding a photo helps people\nrecognize you',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.w500
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      SizedBox(
                        height: 200,
                        width: double.infinity,
                        child: Card(
                          elevation: 1,
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                CircleAvatar(
                                  child: Icon(
                                    Icons.camera_alt,
                                    size: 30,
                                  ),
                                ),
                               Column(
                                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                 children: [
                                   Text(
                                     'Damon Sims',
                                     style: TextStyle(
                                         color: Colors.black,
                                         fontSize: 18,
                                     ),
                                   ),
                                   Text(
                                     'Mobile Developer at Grazac',
                                     style: TextStyle(
                                         color: Colors.black,
                                         fontSize: 14,

                                     ),
                                   ),
                                 ],
                               )
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 70,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            height: 49,
                            width: double.infinity,
                            child: ElevatedButton(
                                onPressed: (){
                                },
                                style: ElevatedButton.styleFrom(
                                    elevation: 0,
                                    primary: Color(0xff0A66C2),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(24),
                                    )
                                ),
                                child: Text(
                                  'Add a photo',
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
                                Get.toNamed('/verification');
                              } ,
                              child: Text(
                                'Skip for now',
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
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
