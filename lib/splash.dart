import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stenden_guide/startup_screen1.dart';

class Splash extends StatefulWidget {
  @override
  _Splash createState() {
    return _Splash();
  }
}

class _Splash extends State<Splash> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 10),()=> Navigator.push(context, MaterialPageRoute(
        builder: (context)=>StartupScreen1()
    )));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage('splash.png'),
          fit: BoxFit.cover),
        ),
        padding: EdgeInsets.only(top: 580),
        child: Center(child: Column(
          children: <Widget>[
            Text('The guide to Stenden for',style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold,color: Colors.white),),
            Text('International Students',style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold,color: Colors.white),)
          ],
        ),),
      ),
    );
  }
}
