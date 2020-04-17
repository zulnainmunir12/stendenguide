import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stenden_guide/startup_screen2.dart';

class StartupScreen1 extends StatefulWidget {
  @override
  _Screen1 createState() {
    return _Screen1();
  }
}

class _Screen1 extends State<StartupScreen1> {
//  int _index = 0;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: <Widget>[
        Image.asset('screen1.png'),
        SizedBox(
          height: 15,
        ),
        Center(
            child: Column(
          children: <Widget>[
            Text(
              'Hello!',
              style: TextStyle(
                  fontSize: 24,
                  color: Colors.indigo,
                  fontWeight: FontWeight.w500),
            ),
            SizedBox(height: 20,),
            Text('This student guide for international students',style: TextStyle(fontSize: 18),),
            Text('Provide a summary of essential information',style: TextStyle(fontSize: 18),),
            Text('about studying at Stendent University.We',style: TextStyle(fontSize: 18),),
            Text('this guide will help you adapt to your ',style: TextStyle(fontSize: 18),),
            Text('new environment as quickly and smoothly as',style: TextStyle(fontSize: 18),),
            Text('Possible.',style: TextStyle(fontSize: 18),),
             SizedBox(height: 25,),
          Row(
            children: <Widget>[
              Padding(padding: EdgeInsets.only(right: 180),),
              Container(height: 10,width:10,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.pinkAccent
                ),
              ),
              SizedBox(width: 3,),
              Container(height: 10,width:10,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.pinkAccent.withOpacity(0.5)
                ),
              ),
              SizedBox(width: 3,),
              Container(height: 10,width:10,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.pinkAccent.withOpacity(0.5)
                ),
              ),
              SizedBox(width: 3,),
              Container(height: 10,width:10,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.pinkAccent.withOpacity(0.5)
                ),
              ),
            ],
          ),
          ],
        )),
        SizedBox(height: 15,),
        SizedBox(
          height: 70,
          width: MediaQuery.of(context).size.width,
          child: RaisedButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>StartupScreen2()));
          },
            child: Text(
              'Continue',style: TextStyle(fontSize: 18,color: Colors.white),
            ),
            color: Colors.pink,
          ),
        )
      ],
    ));
  }
}
