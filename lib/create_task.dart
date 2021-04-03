import 'package:flutter/material.dart';
//import 'package:google_fonts/google_fonts.dart';
import 'components/toggle_container.dart';
import 'mainscreen.dart';
import 'package:task_manager/size_config.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CreateTask extends StatefulWidget {
  @override
  _CreateTaskState createState() => _CreateTaskState();
}

ColorState selectedState;

class _CreateTaskState extends State<CreateTask> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    double defaultSize = SizeConfig.defaultSize;
    return Center(
      child: Scaffold(
        backgroundColor: Color(0xFFBBBBBB),
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.white),
          backgroundColor: Color(0xFFBBBBBB),
          elevation: 0.0,
        ),
        body: Column(
          children: [
            Container(
              color: Color(0xFFBBBBBB),
              child: Padding(
                padding: const EdgeInsets.all(25.0),
                child: Text(
                  'Create a task',
                  // style: GoogleFonts.roboto(
                  //   textStyle: TextStyle(
                  //       color: Colors.white,
                  //       fontSize: 40.0,
                  //       fontWeight: FontWeight.bold),
                  // ),
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 40.0,
                  ),
                ),
              ),
            ),
            Expanded(
              child: Container(
                width: double.infinity,
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                child: Column(
                  children: [
                    Container(
                      alignment: Alignment.centerLeft,
                      margin: EdgeInsets.fromLTRB(15, 5, 15, 0),
                      child: Text(
                        'Task Title',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color(0xFFABA2B0),
                        ),
                      ),
                    ),
                    SizedBox(),
                    Container(
                      margin: EdgeInsets.fromLTRB(15, 5, 15, 5),
                      child: TextField(
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                          hintText: 'Task Title',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      margin: EdgeInsets.fromLTRB(15, 5, 15, 5),
                      child: Text(
                        'Task Type',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color(0xFFABA2B0),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(15, 5, 15, 5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
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
                              containerText: 'Important',
                              togglePadding: 18.0,
                              toggleFont: 1.3,
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
                              containerText: 'Planned',
                              togglePadding: 18.0,
                              toggleFont: 1.3,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      margin: EdgeInsets.fromLTRB(15, 5, 15, 5),
                      child: Text(
                        'Choose date & time',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color(0xFFABA2B0),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(15, 5, 15, 5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          GestureDetector(
                            onTap: () {},
                            child: Container(
                              margin: EdgeInsets.only(right: 10),
                              padding: EdgeInsets.all(18.0),
                              decoration: BoxDecoration(
                                color: Color(0xFFF5F5F5),
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Text.rich(
                                TextSpan(
                                  style: TextStyle(
                                    fontSize: defaultSize * 1.3,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),
                                  children: [
                                    WidgetSpan(
                                      child: FaIcon(
                                        FontAwesomeIcons.calendarAlt,
                                        size: defaultSize * 1.6,
                                      ),
                                    ),
                                    WidgetSpan(
                                      child: SizedBox(
                                        width: 5.0,
                                      ),
                                    ),
                                    TextSpan(
                                      text: 'Select a date',
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: Container(
                              margin: EdgeInsets.only(right: 10),
                              padding: EdgeInsets.all(18.0),
                              decoration: BoxDecoration(
                                color: Color(0xFFF5F5F5),
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Text.rich(
                                TextSpan(
                                  style: TextStyle(
                                    fontSize: defaultSize * 1.3,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),
                                  children: [
                                    WidgetSpan(
                                      child: FaIcon(
                                        FontAwesomeIcons.clock,
                                        size: defaultSize * 1.6,
                                      ),
                                    ),
                                    WidgetSpan(
                                      child: SizedBox(
                                        width: 5.0,
                                      ),
                                    ),
                                    TextSpan(
                                      text: 'Select Time',
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Container(),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => MainScreen()),
                        );
                      },
                      child: Container(
                        margin: EdgeInsets.only(top: 10),
                        decoration: BoxDecoration(
                          color: Color(0xFFF08182),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        width: double.infinity,
                        height: 50.0,
                        alignment: Alignment.center,
                        child: Text(
                          'Done',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
