import 'package:flutter/material.dart';

class CreateTask extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Scaffold(
        backgroundColor: Color(0xFFCAA2EB),
        appBar: AppBar(
          iconTheme: IconThemeData(
            color: Color(0xFFBBBBBB),
          ),
          backgroundColor: Colors.white,
          elevation: 0.0,
        ),
        body: Column(
          children: [
            Container(
              color: Color(0xFFCAA2EB),
              child: Padding(
                padding: const EdgeInsets.all(25.0),
                child: Text(
                  'Add an Event',
                  style: TextStyle(fontSize: 65.0, color: Colors.white),
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
                // child: Column(
                //   children: [
                //     Text('Event'),
                //   ],
                // ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
