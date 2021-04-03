//import 'dart:js';

import 'package:flutter/material.dart';
import 'package:task_manager/create_task.dart';
import 'package:task_manager/size_config.dart';
import 'components/toggle_container.dart';
import 'components/task_card.dart';

enum ColorState { active, active2, active3 }

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  ColorState selectedState;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    double defaultSize = SizeConfig.defaultSize;
    double screenHeight = SizeConfig.screenHeight;
    return Center(
      child: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: EdgeInsets.fromLTRB(20.0, 60.0, 20.0, 0.0),
                    child: Text(
                      'Hello,',
                      style: TextStyle(
                        color: Color(0xFFBBBBBB),
                        fontSize: defaultSize * 3,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 65, 20, 0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(25),
                      child: Image.asset(
                        'images/profilepic.png',
                        height: defaultSize * 6.5,
                        width: defaultSize * 6.5,
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                padding: EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 0.0),
                child: Text(
                  'Rishiraj Sawant',
                  style: TextStyle(
                    fontSize: defaultSize * 3,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Container(
                  margin: EdgeInsets.fromLTRB(20, 40, 20, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            selectedState = ColorState.active;
                          });
                        },
                        child: ToggleContainer(
                          selectedState: selectedState,
                          activeState: ColorState.active,
                          defaultSize: defaultSize,
                          containerText: 'My Day',
                          togglePadding: 23.0,
                          toggleFont: 1.5,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            selectedState = ColorState.active2;
                          });
                        },
                        child: ToggleContainer(
                          selectedState: selectedState,
                          activeState: ColorState.active2,
                          defaultSize: defaultSize,
                          containerText: 'Important',
                          togglePadding: 23.0,
                          toggleFont: 1.5,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            selectedState = ColorState.active3;
                          });
                        },
                        child: ToggleContainer(
                          selectedState: selectedState,
                          activeState: ColorState.active3,
                          defaultSize: defaultSize,
                          containerText: 'Planned',
                          togglePadding: 23.0,
                          toggleFont: 1.5,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(20, 40, 0, 0),
                child: Text(
                  'Tasks',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: defaultSize * 1.8,
                      color: Color(0xFFABA2B0)),
                ),
              ),
              Container(
                height: screenHeight >= 812.0
                    ? screenHeight * 0.42
                    : screenHeight * 0.38,
                child: ListView(
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  children: [
                    TaskCard(
                      taskText: 'Meeting with Rishiraj',
                      timeText: '12:30 PM - 1:00 PM',
                      descText:
                          'To discuss about the next game and the strategy',
                    ),
                    TaskCard(
                      taskText: 'Follow-up with Nutritionist',
                      timeText: '3:00 PM - 4:00 PM',
                      descText:
                          'Discuss about the diet plan, sleep cycle and workout routine for the upcoming week.',
                    ),
                    TaskCard(
                      taskText: 'Follow-up with Nutritionist',
                      timeText: '3:00 PM - 4:00 PM',
                      descText:
                          'Discuss about the diet plan, sleep cycle and workout routine for the upcoming week.',
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Container(),
              ),
              Container(
                padding: EdgeInsets.only(bottom: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(
                      Icons.home,
                      size: defaultSize * 2.7,
                      color: Color(0xFF424242),
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CreateTask()),
                          );
                        },
                        child: Container(
                          padding: EdgeInsets.all(10),
                          color: Color(0xFFF08182),
                          child: Icon(
                            Icons.add,
                            size: defaultSize * 2.7,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    Icon(
                      Icons.message,
                      size: defaultSize * 2.7,
                      color: Color(0xFF424242),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
