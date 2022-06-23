import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class Homepage extends StatefulWidget {

  @override
  State<Homepage> createState() => _HomepageState();
}


class _HomepageState extends State<Homepage> {
  var _scaffoldKey = new GlobalKey<ScaffoldState>();
  int _selectedIndex = 0;

  void _onItemTapped(int index){
    setState(() {
      _selectedIndex = index;
    });
  }

  showAppDrawer(BuildContext context){
    return Drawer(
      backgroundColor: Colors.white,
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(
                left: 20,
                top: 40,
                bottom: 15
              ),
              child: Icon(
                Icons.person_pin,
                color: Colors.blueGrey,
                size: 80,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: 20,
                  bottom: 20
              ),
              child: Text(
                'Damon Sims',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500
                ),
              ),
            ),
            Divider(
              height: 5,
                color: Colors.black54,
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: 20,
                top: 30
              ),
              child: Text(
                'Groups',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: 20,
                  top: 30
              ),
              child: Text(
                'Events',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500
                ),
              ),
            ),
            Spacer(
              flex: 1,
            ),
            Padding(
              padding:EdgeInsets.only(
                bottom: 30
              ),
              child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Divider(
                    height: 5,
                    color: Colors.black54,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        left: 20,
                        top: 30
                    ),
                    child: Row(
                      children: [
                        Icon(
                          Icons.settings,
                          color: Colors.black87,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Settings',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w500
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  List<Widget> _pages = [
   Home(),
    Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Text(
          'My Network',
        ),
      ),
    ),
    Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Text(
          'Post',
        ),
      ),
    ),
    Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Text(
          'Notifications',
          style: TextStyle(
            color: Colors.black,
            fontSize: 30
          ),
        ),
      ),
    ),
    Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Text(
          'Jobs',
        ),
      ),
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: Colors.white,
      drawer: showAppDrawer(context),
      appBar: AppBar(
        leading: GestureDetector(
          onTap: (){
           _scaffoldKey.currentState?.openDrawer();
          },
          child: Icon(
            Icons.person_pin,
            color: Colors.blueGrey,
            size: 30,
          ),
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              height: 30,
              width: 250,
              child: TextField(
                cursorColor: Colors.blueGrey,
                decoration: InputDecoration(
                  hintText: 'Search',
                  hintStyle: TextStyle(
                    fontSize: 15
                  ),
                  prefixIcon: Icon(
                    Icons.search,
                    color: Colors.black54,
                  ),
                  fillColor: Colors.blueGrey.shade100,
                  filled: true,
                  border: UnderlineInputBorder(
                    borderSide: BorderSide.none
                  )
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(0),
              child: _selectedIndex == 4 ? Icon(
                Icons.more_vert,
                color: Colors.black54,
              ) : null,
            ),
            Icon(
              Icons.comment,
              color: Colors.black54,
            )
          ],
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: SafeArea(
        child: Center(
          child: _pages.elementAt(_selectedIndex),
        ),
      ),
      bottomNavigationBar:
          BottomNavigationBar(
            elevation: 0,
            type: BottomNavigationBarType.fixed,
            currentIndex: _selectedIndex,
              showSelectedLabels: true,
              showUnselectedLabels: true,
              unselectedItemColor: Colors.black54,
              selectedItemColor: Colors.black,
              unselectedLabelStyle: TextStyle(
                fontSize: 10,
                color: Colors.black54
              ),
              selectedLabelStyle: TextStyle(
                  fontSize: 10,
                  color: Colors.black54
              ),
              onTap: _onItemTapped,
              items: [
                BottomNavigationBarItem(
                    icon: Icon(
                      Icons.home,
                      size: 20,
                    ),
                  label: 'Home'
                ),
                BottomNavigationBarItem(
                    icon: Icon(
                        Icons.people_alt,
                      size: 20,
                    ),
                  label: 'My Network'
                ),
                BottomNavigationBarItem(
                    icon: Icon(
                        Icons.add_box,
                      size: 20,
                    ),
                  label: 'Post'
                ),
                BottomNavigationBarItem(
                    icon: Icon(
                        Icons.notifications,
                      size: 20,
                    ),
                  label: 'Notifications'
                ),
                BottomNavigationBarItem(
                    icon: Icon(
                        Icons.card_travel,
                      size: 20,
                    ),
                  label: 'Jobs'
                )
              ]
          ),
    );
  }
}

class Home extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Text(
          'Home',
        ),
      ),
    );
  }
}



