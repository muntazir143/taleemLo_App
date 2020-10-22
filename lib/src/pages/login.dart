import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:progress_dialog/progress_dialog.dart';
import 'package:taleemLo/src/helper.dart';
import 'package:taleemLo/src/eventhelper.dart';
import 'package:taleemLo/src/pages/contact_admin.dart';
import 'package:taleemLo/src/pages/homepage.dart';
import 'package:taleemLo/src/school_events.dart';
import 'package:taleemLo/src/screen/home_screen.dart';
import 'package:http/http.dart' as http;

import '../Student.dart';

class Login extends StatefulWidget {
  Login({Key key}) : super(key: key);
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final snakbar=SnackBar(content: Text('Login Failed!'),
  backgroundColor: Colors.red);
  final _scaffoldKey=new GlobalKey<ScaffoldState>();
  ProgressDialog pr;
  List<Student> studentData;
  TextEditingController rollNo = new TextEditingController();
  TextEditingController password = new TextEditingController();
  bool isObsecure = true;


  _loadUser() async{
    _loadevents();
    http.Response response = await http.get('http://taleemlo.us-west-2.elasticbeanstalk.com/api/Masters/GetStudentData/'+rollNo.text+'/'+password.text);
    if(response.body.contains('id')){
      print(response.body);
      List datalist=json.decode(response.body);
      print(datalist);

      Iterable list = datalist;
      List<Student> studentlist = list.map((e) => Student.fromJson(e)).toList();
      print(studentlist[0].name);
      AppHelper.instance.studentModel = studentlist[0];
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context){
        return HomeScreen();
      }));
    }else{
      pr.hide();
      _scaffoldKey.currentState.showSnackBar(snakbar);
    }

  }

  _loadevents() async{
    http.Response response = await http.get('http://taleemlo.us-west-2.elasticbeanstalk.com/api/Masters/GetSchoolEvents/'+rollNo.text+'/'+password.text);
    if(response.body.contains('title')){
      print(response.body);
      List datalist=json.decode(response.body);
      print(datalist);

      Iterable list = datalist;
      List<SchoolEvents> eventlist = list.map((e) => SchoolEvents.fromJson(e)).toList();
      print(eventlist[0].body);
      EventHelper.instance.eventModel = eventlist[0];

    }else{
      pr.hide();
      _scaffoldKey.currentState.showSnackBar(snakbar);
    }
  }

@override
  void initState() {
  super.initState();
}

  @override
  Widget build(BuildContext context) {
    pr=ProgressDialog(context,type: ProgressDialogType.Normal);
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.only(left: 16, right: 16),
          child: SingleChildScrollView(
            child: Stack(
              children: [
                Positioned(
                  child: Column(
                    children: [
                      SizedBox(
                        height: 50,
                      ),
                      Container(
                        alignment: Alignment.center,
                        height: 150,
                        child: Image.asset('images/TaleemLo_logo.png'),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        'Sign in to Continue!',
                        style: TextStyle(fontSize: 15, color: Colors.black),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      rollNoField(),
                      SizedBox(
                        height: 30,
                      ),
                      passwordField(),
                      SizedBox(
                        height: 12,
                      ),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return null; // ForgetPassword();
                            }));
                          },
                          child: Text(
                            "Forget Password?",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, color: Colors.red),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Container(
                        height: 50,
                        width: double.infinity,
                        child: FlatButton(
                          padding: EdgeInsets.all(0),
                          onPressed: () async {
                            pr.show();
                            _loadUser();

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
                              child: Text(
                                "Login",
                                style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(6)),
                        ),
                      ),
                      SizedBox(height: 10),
                      Padding(
                        padding: EdgeInsets.only(bottom: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              "Not Have Any Account?",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) {
                                    return ContactAdmin();
                                  }),
                                );
                              },
                              child: Text(
                                " Contact Admin",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.blue[900]),
                              ),
                            ),
                            SizedBox(
                              height: 70,
                            )
                          ],
                        ),
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

  TextField rollNoField() {
    return TextField(
      controller: rollNo,
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        labelText: "Roll Number",
        labelStyle: TextStyle(fontSize: 15, color: Colors.grey[500]),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: BorderSide(color: Colors.grey[500]),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: BorderSide(color: Colors.blue[900]),
        ),
        suffixIcon: Icon(Icons.edit, color: Colors.blue[900]),
      ),
    );
  }

  TextField passwordField() {
    return TextField(
      controller: password,
      obscureText: isObsecure == true ? true : false,
      decoration: InputDecoration(
          labelText: "Password",
          labelStyle: TextStyle(fontSize: 15, color: Colors.grey[500]),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
            borderSide: BorderSide(color: Colors.grey[500]),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
            borderSide: BorderSide(color: Colors.blue[900]),
          ),
          suffixIcon: IconButton(
              icon: Icon(Icons.remove_red_eye, color: Colors.blue[900]),
              onPressed: () {
                setState(() {
                  isObsecure = !isObsecure;
                });
              })),
    );
  }

}
