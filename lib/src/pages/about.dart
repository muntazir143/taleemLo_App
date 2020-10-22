import 'package:flutter/material.dart';

class About extends StatefulWidget {
  @override
  _AboutState createState() => _AboutState();
}

class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: 300,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(colors: [
                    Colors.lightBlue,
                    Colors.blue[600],
                    Colors.blue[900]
                  ])),
                ),
                Column(
                  children: [
                    SizedBox(
                      height: 40,
                    ),
                    Center(
                      child: Image(
                        color: Colors.white,
                        height: 150,
                        image: AssetImage('images/TaleemLo_logo.png'),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'All Rights Reserved',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                )
              ],
            ),
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'TaleemLo aim to give our children a complete educational experience, with outstanding academic teaching in an excellent pastoral setting, and to prepare them fully for the senior school of their choice.\nOur central belief is that our children should be happy and positively challenged in what they do, and they will achieve to very high levels.',
                style: TextStyle(fontSize: 20,
                fontFamily: 'Montserrat'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
