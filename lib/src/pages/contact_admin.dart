import 'package:flutter/material.dart';
// import 'package:url_launcher/url_launcher.dart';

class ContactAdmin extends StatefulWidget {
  @override
  _ContactAdminState createState() => _ContactAdminState();
}

class _ContactAdminState extends State<ContactAdmin> {
  // _launchUrl(url) async {
  //   if (await canLaunch(url)) {
  //     await launch(url);
  //   } else {
  //     throw 'could not launch $url';
  //   }
  // }
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          padding: EdgeInsets.only(left: 16, right: 16),
          child: SafeArea(
              child: Column(
            children: [
              SizedBox(height: 50),
              Container(
                alignment: Alignment.center,
                height: 150,
                child: Image.asset('images/TaleemLo_logo.png'),
              ),
              SizedBox(height: 50),
              Text(
                  'Write a brief mail to school authorities for opening your account.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
         
              SizedBox(height: 10),
              FlatButton(
                onPressed: () {
                  // _launchUrl(
                  //     'mailto:smmr143@email.com?subject=Account Opening%20subject&body=test%20body');
                },
                padding: EdgeInsets.all(0),
                child: Ink(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                    gradient: LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      colors: [
                        Colors.lightBlue,
                        Colors.blue[600],
                        Colors.blue[900]
                      ],
                    ),
                  ),
                  child: Container(
                    alignment: Alignment.center,
                    constraints: BoxConstraints(
                        maxWidth: double.infinity, maxHeight: 50),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.mail,
                          color: Colors.white,
                        ),
                        SizedBox(width: 5),
                        Text('Mail: taleemlo@gmail.com', style: TextStyle(color: Colors.white))
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 50),
              Text(
                  'Call for queries regarding account.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
         
              SizedBox(height: 10),

              FlatButton(
                padding: EdgeInsets.all(0),
                onPressed: () {
                  // _launchUrl('tel: 03436332887');
                },
                child: Ink(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                    gradient: LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      colors: [
                        Colors.lightBlue,
                        Colors.blue[600],
                        Colors.blue[900]
                      ],
                    ),
                  ),
                  child: Container(
                      alignment: Alignment.center,
                      constraints: BoxConstraints(
                          maxWidth: double.infinity, maxHeight: 50),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.call,
                            color: Colors.white,
                          ),
                          SizedBox(width: 5),
                          Text('Call: 03436332887', style: TextStyle(color: Colors.white))
                        ],
                      )),
                ),
              )
            ],
          ))),
    );
  }
}
