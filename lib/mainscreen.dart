//import 'dart:js';

import 'package:flutter/material.dart';
import 'package:task_manager/create_task.dart';
import 'package:task_manager/size_config.dart';

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
                        child: Container(
                          margin: EdgeInsets.only(right: 10),
                          padding: EdgeInsets.all(23),
                          decoration: BoxDecoration(
                            color: selectedState == ColorState.active
                                ? Color(0xFFCAA2EB)
                                : Color(0xFFF5F5F5),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Text(
                            'My Day',
                            style: TextStyle(
                                fontSize: defaultSize * 1.8,
                                fontWeight: FontWeight.bold,
                                color: selectedState == ColorState.active
                                    ? Colors.white
                                    : Colors.black),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            selectedState = ColorState.active2;
                          });
                        },
                        child: Container(
                          margin: EdgeInsets.only(right: 10),
                          padding: EdgeInsets.all(23),
                          decoration: BoxDecoration(
                            color: selectedState == ColorState.active2
                                ? Color(0xFFCAA2EB)
                                : Color(0xFFF5F5F5),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Text(
                            'Important',
                            style: TextStyle(
                                fontSize: defaultSize * 1.8,
                                fontWeight: FontWeight.bold,
                                color: selectedState == ColorState.active2
                                    ? Colors.white
                                    : Colors.black),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            selectedState = ColorState.active3;
                          });
                        },
                        child: Container(
                          padding: EdgeInsets.all(23),
                          decoration: BoxDecoration(
                            color: selectedState == ColorState.active3
                                ? Color(0xFFCAA2EB)
                                : Color(0xFFF5F5F5),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Text(
                            'Planned',
                            style: TextStyle(
                                fontSize: defaultSize * 1.8,
                                fontWeight: FontWeight.bold,
                                color: selectedState == ColorState.active3
                                    ? Colors.white
                                    : Colors.black),
                          ),
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

class TaskCard extends StatelessWidget {
  TaskCard({@required this.taskText, @required this.timeText, this.descText});

  final String taskText, timeText, descText;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(20, 10, 20, 0),
      decoration: BoxDecoration(
          color: Color(0xFFF5F5F5), borderRadius: BorderRadius.circular(20)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: EdgeInsets.fromLTRB(20, 20, 20, 5),
            child: Text(
              taskText,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(20, 0, 0, 5),
            child: Row(
              children: [
                Icon(
                  Icons.access_alarms,
                ),
                Text(
                  timeText,
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(20, 0, 0, 20),
            child: Text(
              descText,
              style: TextStyle(fontSize: 14, fontStyle: FontStyle.italic),
            ),
          ),
        ],
      ),
    );
  }
}

// void createTask() {
//   double defaultSize = SizeConfig.defaultSize;
//   DraggableScrollableSheet(builder: (context, scrollController) {
//     return SingleChildScrollView(
//       controller: scrollController,
//       child: Container(
//         height: defaultSize * 18,
//         child: Text('Hello World'),
//       ),
//     );
//   });
// }

// showModalBottomSheet(
//         context: context,
//         builder: (context) {
//           return Container(
//             color: Color(0xFF737373),
//             child: Container(
//               height: defaultSize * 18,
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.only(
//                     topLeft: Radius.circular(20),
//                     topRight: Radius.circular(20)),
//                 color: Colors.white,
//               ),
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 mainAxisSize: MainAxisSize.min,
//                 children: <Widget>[
//                   Container(
//                     child: Text(
//                       'Create a task',
//                       style: TextStyle(
//                         fontSize: defaultSize * 2,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                   ),
//                   SizedBox(
//                     height: defaultSize * 4,
//                   ),
//                   Container(
//                     alignment: Alignment.centerLeft,
//                     margin: EdgeInsets.only(left: 30),
//                     child: Text(
//                       'Task Title',
//                       style: TextStyle(
//                         fontSize: defaultSize * 1.5,
//                         fontWeight: FontWeight.bold,
//                         color: Color(0xFFABA2B0),
//                       ),
//                     ),
//                   ),
//                   SizedBox(
//                     height: defaultSize * 1,
//                   ),
//                   Container(
//                     margin: EdgeInsets.fromLTRB(30, 0, 30, 0),
//                     child: TextField(
//                       decoration: InputDecoration(
//                         contentPadding: EdgeInsets.fromLTRB(20, 0, 20, 0),
//                         hintText: 'Task Title',
//                         border: OutlineInputBorder(
//                           borderRadius: BorderRadius.circular(15),
//                         ),
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           );
//         });
