import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'package:taleemLo/src/helper.dart';
=======
>>>>>>> 5bd28953d5c475eb0df82bc5cfbe317c693caaea

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final Shader linearGradient = LinearGradient(
    colors: <Color>[
      Colors.lightBlue,
      Colors.blue[600],
      Colors.blue[900]
    ],
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
              'Personal Info',
              style: TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                  foreground: Paint()..shader = linearGradient),
            ),
            SizedBox(
              height: 15,
            ),
            Card(
              elevation: 10,
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Colors.lightBlue.withOpacity(0.4),
                      Colors.blue[600].withOpacity(0.5),
                      Colors.blue[900].withOpacity(0.5)
                    ],
                  ),
                ),
                padding: EdgeInsets.all(16.0),
                height: 50,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Name',
                      style: TextStyle(fontSize: 20),
                    ),
                    Text(
<<<<<<< HEAD
                      AppHelper.instance.studentModel.name,
=======
                      'Ali Ahmad',
>>>>>>> 5bd28953d5c475eb0df82bc5cfbe317c693caaea
                      style: TextStyle(fontSize: 20),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Card(
              elevation: 10,
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Colors.lightBlue.withOpacity(0.4),
                      Colors.blue[600].withOpacity(0.5),
                      Colors.blue[900].withOpacity(0.5)
                    ],
                  ),
                ),
                padding: EdgeInsets.all(16.0),
                height: 50,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Father's Name",
                      style: TextStyle(fontSize: 20),
                    ),
                    Text(
<<<<<<< HEAD
                      AppHelper.instance.studentModel.fName,
=======
                      'M. Ahmad',
>>>>>>> 5bd28953d5c475eb0df82bc5cfbe317c693caaea
                      style: TextStyle(fontSize: 20),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Card(
              elevation: 10,
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Colors.lightBlue.withOpacity(0.4),
                      Colors.blue[600].withOpacity(0.5),
                      Colors.blue[900].withOpacity(0.5)
                    ],
                  ),
                ),
                padding: EdgeInsets.all(16.0),
                height: 50,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Roll No',
                      style: TextStyle(fontSize: 20),
                    ),
                    Text(
<<<<<<< HEAD
                      AppHelper.instance.studentModel.id.toString(),
=======
                      '1007',
>>>>>>> 5bd28953d5c475eb0df82bc5cfbe317c693caaea
                      style: TextStyle(fontSize: 20),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Card(
              elevation: 10,
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Colors.lightBlue.withOpacity(0.4),
                      Colors.blue[600].withOpacity(0.5),
                      Colors.blue[900].withOpacity(0.5)
                    ],
                  ),
                ),
                padding: EdgeInsets.all(16.0),
                height: 50,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Class',
                      style: TextStyle(fontSize: 20),
                    ),
                    Text(
<<<<<<< HEAD
                      AppHelper.instance.studentModel.className,
=======
                      'Two',
>>>>>>> 5bd28953d5c475eb0df82bc5cfbe317c693caaea
                      style: TextStyle(fontSize: 20),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Card(
              elevation: 10,
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Colors.lightBlue.withOpacity(0.4),
                      Colors.blue[600].withOpacity(0.5),
                      Colors.blue[900].withOpacity(0.5)
                    ],
                  ),
                ),
                padding: EdgeInsets.all(16.0),
                height: 50,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Section',
                      style: TextStyle(fontSize: 20),
                    ),
                    Text(
<<<<<<< HEAD
                      AppHelper.instance.studentModel.sectionName,
=======
                      'A',
>>>>>>> 5bd28953d5c475eb0df82bc5cfbe317c693caaea
                      style: TextStyle(fontSize: 20),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Card(
              elevation: 10,
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Colors.lightBlue.withOpacity(0.4),
                      Colors.blue[600].withOpacity(0.5),
                      Colors.blue[900].withOpacity(0.5)
                    ],
                  ),
                ),
                padding: EdgeInsets.all(16.0),
                height: 50,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Gender',
                      style: TextStyle(fontSize: 20),
                    ),
                    Text(
<<<<<<< HEAD
                      AppHelper.instance.studentModel.gender,
=======
                      'Male',
>>>>>>> 5bd28953d5c475eb0df82bc5cfbe317c693caaea
                      style: TextStyle(fontSize: 20),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Card(
              elevation: 10,
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Colors.lightBlue.withOpacity(0.4),
                      Colors.blue[600].withOpacity(0.5),
                      Colors.blue[900].withOpacity(0.5)
                    ],
                  ),
                ),
                padding: EdgeInsets.all(16.0),
                height: 50,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Mobile Number',
                      style: TextStyle(fontSize: 20),
                    ),
                    Text(
<<<<<<< HEAD
                      AppHelper.instance.studentModel.ph,
=======
                      '03127652349',
>>>>>>> 5bd28953d5c475eb0df82bc5cfbe317c693caaea
                      style: TextStyle(fontSize: 20),
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
