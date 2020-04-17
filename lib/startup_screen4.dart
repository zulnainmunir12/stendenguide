import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stenden_guide/policy.dart';

class StartupScreen4 extends StatefulWidget {
  @override
  _Screen4 createState() {
    return _Screen4();
  }
}

class _Screen4 extends State<StartupScreen4> {
  bool _isChecked = false;
  void onChanged(bool value) {
    setState(() {
      _isChecked = value;
    });
  }
  void _onChanged(int value) {
    if (value == 0) {
      setState(() {
        _isChecked = true;
      });
    }
  }
  void i=0;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          new Container(
            constraints: new BoxConstraints.expand(
              height: 350.0,
            ),
            alignment: Alignment.topLeft,
            padding: new EdgeInsets.only(left: 2.0, top: 0.0),
            decoration: new BoxDecoration(
              image: new DecorationImage(
                image: new AssetImage('screen4.png'),
                fit: BoxFit.cover,
              ),
            ),
            child: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.arrow_back,
                color: Colors.white,
                size: 20,
              ),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Center(
              child: Column(
            children: <Widget>[
              Text(
                'Ready!',
                style: TextStyle(
                    fontSize: 24,
                    color: Colors.indigo,
                    fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "You're all set up to use the Stenden Guide ",
                style: TextStyle(fontSize: 18),
              ),
              Text(
                'app.Enjoy your stay at Stenden',
                style: TextStyle(fontSize: 18),
              ),
              Text(
                'University',
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(
                height: 15,
              ),
              FlatButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Policy()));
              },
                child: Container(
                  width: 370,
                  height: 60,
                  decoration: BoxDecoration(color: Colors.white70, boxShadow: [
                    BoxShadow(color: Colors.black.withOpacity(0.1), spreadRadius: 1)
                  ]),
                  child: Row(
                    children: <Widget>[
                      SizedBox(width: 15,),
                      Text('I agree to the user policy of this app',style: TextStyle(color: Colors.pinkAccent,fontSize: 18,fontWeight: FontWeight.bold),),
                      SizedBox(width: 5,),
                      new Checkbox(value: _isChecked, onChanged:(bool value){
                        _onChanged(0);
                      })
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Row(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(right: 180),
                  ),
                  Container(
                    height: 10,
                    width: 10,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.pinkAccent.withOpacity(0.5)),
                  ),
                  SizedBox(
                    width: 3,
                  ),
                  Container(
                    height: 10,
                    width: 10,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: Colors.pinkAccent.withOpacity(0.5)),
                  ),
                  SizedBox(
                    width: 3,
                  ),
                  Container(
                    height: 10,
                    width: 10,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.pinkAccent.withOpacity(0.5)),
                  ),
                  SizedBox(
                    width: 3,
                  ),
                  Container(
                    height: 10,
                    width: 10,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.pinkAccent),
                  ),
                ],
              ),
              SizedBox(height: 25,),
              Container(
                height: 70,
                width: 400,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey.withOpacity(0.5)),
                ),
                child: RaisedButton(
                  onPressed: () {
                  },
                  child: Text(
                    'Continue',
                    style: TextStyle(fontSize: 18, color: Colors.grey),
                  ),
                  color: Colors.white,
                ),
              )
            ],
          )),
        ],
      ),
    );
  }
}
