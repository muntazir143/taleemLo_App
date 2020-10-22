import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'package:taleemLo/src/eventhelper.dart';

import '../helper.dart';
=======
>>>>>>> 5bd28953d5c475eb0df82bc5cfbe317c693caaea

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final Shader linearGradient = LinearGradient(
    colors: <Color>[Colors.lightBlue, Colors.blue[600], Colors.blue[900]],
  ).createShader(new Rect.fromLTWH(0.0, 0.0, 200.0, 70.0));

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 15,
            ),
            Text(
              'Overview',
              style: TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.bold,
                foreground: Paint()..shader = linearGradient
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Card(
              elevation: 10,
              child: Container(
                padding: EdgeInsets.all(16.0),
                height: 200,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Colors.lightBlue.withOpacity(0.4),
                      Colors.blue[600].withOpacity(0.5),
                      Colors.blue[900].withOpacity(0.7)
                    ],
                  ),
                ),
                child: Column(
                  children: [
                    Text(
                      'Attendance',
                      style:
                          TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          'Today',
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                        Text(
<<<<<<< HEAD
                          AppHelper.instance.studentModel.todayAttendance,
=======
                          'Absent',
>>>>>>> 5bd28953d5c475eb0df82bc5cfbe317c693caaea
                          style: TextStyle(fontSize: 20),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          'Yesterday',
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                        Text(
<<<<<<< HEAD
                          AppHelper.instance.studentModel.yesterdayAttendance,
=======
                          'Present',
>>>>>>> 5bd28953d5c475eb0df82bc5cfbe317c693caaea
                          style: TextStyle(fontSize: 20),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      'Fee',
                      style:
                          TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          'Fee Status',
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                        Text(
<<<<<<< HEAD
                          AppHelper.instance.studentModel.feeStatus,
=======
                          'Paid',
>>>>>>> 5bd28953d5c475eb0df82bc5cfbe317c693caaea
                          style: TextStyle(fontSize: 20),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              'Announcement',
              style: TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.bold,
                foreground: Paint()..shader = linearGradient
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Card(
              elevation: 10,
              child: Container(
                  padding: EdgeInsets.all(16.0),
                  height: 200,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Colors.lightBlue.withOpacity(0.4),
                        Colors.blue[600].withOpacity(0.5),
                        Colors.blue[900].withOpacity(0.7)
                      ],
                    ),
                  ),
                  child: Column(
                    children: [
                      Text(
<<<<<<< HEAD
                        EventHelper.instance.eventModel.title,
=======
                        'News/Events',
>>>>>>> 5bd28953d5c475eb0df82bc5cfbe317c693caaea
                        style: TextStyle(
                            fontSize: 23, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Center(
                        child: Text(
<<<<<<< HEAD
                          EventHelper.instance.eventModel.body,
=======
                          'Corona Virus Alert: \n\nSchool will be off from March 16th to September 15th.',
>>>>>>> 5bd28953d5c475eb0df82bc5cfbe317c693caaea
                          style: TextStyle(fontSize: 20),
                        ),
                      )
                    ],
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
