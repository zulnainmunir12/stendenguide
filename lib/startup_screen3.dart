import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stenden_guide/startup_screen4.dart';

class StartupScreen3 extends StatefulWidget {
  @override
  _Screen3 createState() {
    return _Screen3();
  }
}

class _Screen3 extends State<StartupScreen3> {
  final myController = TextEditingController();
  bool _isChecked = false;
  bool _Value = false;
  bool _Press = false;
  bool _onPress = false;
  void onChanged(bool value) {
    setState(() {
      _isChecked = value;
    });
  }
  void _onChanged(int value) {
    if (value == 0) {
      setState(() {
        _isChecked = true;
        _Press = _Value = _onPress = false;
      });
    } else if (value == 1) {
      setState(() {
        _Value = true;
        _Press = _isChecked = _onPress = false;
      });
    }
    if (value == 2) {
      setState(() {
        _Press = true;
        _isChecked = _Value = _onPress = false;
      });
    }
    if (value == 3) {
      setState(() {
        _onPress = true;
        _isChecked = _Value = _Press = false;
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
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: const LinearGradient(
                  colors: [Colors.indigo, Colors.blue],
                  begin: const FractionalOffset(0.4, 1.1),
                  end: const FractionalOffset(0.0, 1.2))),
        ),
      ),
      body: Column(
        children: <Widget>[
          SizedBox(
            height: 10,
          ),
          Center(
            child: Column(
              children: <Widget>[
                Text(
                  'About you',
                  style: TextStyle(fontSize: 22, color: Colors.indigo),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Tell us about your stay here so we can ',
                  style: TextStyle(fontSize: 18),
                ),
                Text(
                  'Personalize the Stenden Guide App.',
                  style: TextStyle(fontSize: 18),
                )
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            height: 425,
            width: 300,
            decoration: BoxDecoration(color: Colors.white70, boxShadow: [
              BoxShadow(color: Colors.black.withOpacity(0.1), blurRadius: 3)
            ]),
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: <Widget>[
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      'Name',
                      style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                TextField(
                  decoration: InputDecoration(
                    labelText: 'First Name',
                    labelStyle: TextStyle(
                      color: Colors.black.withOpacity(0.5),fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ),
                SizedBox(height: 5,),
                Row(
                  children: <Widget>[
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      'Surname',
                      style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                TextField(
                  decoration: InputDecoration(
                    labelText: 'Sur Name',
                    labelStyle: TextStyle(
                      color: Colors.black.withOpacity(0.4),fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ),
                SizedBox(height: 5,),
                Row(children: <Widget>[
                  Text('Compus site',style: TextStyle(fontSize: 22,color: Colors.black.withOpacity(0.4),fontWeight: FontWeight.bold),),
                  SizedBox(width: 120,),
                  Checkbox(
                    value: _Value,
                    onChanged: (bool value){
                      _onChanged(1);
                    },
                  )
                ],),
                SizedBox(height: 5,),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 2,
                  color: Colors.black12,
                ),
                SizedBox(height: 5,),
                Row(children: <Widget>[
                  Text('Study Programe',style: TextStyle(fontSize: 22,color: Colors.black.withOpacity(0.4),fontWeight: FontWeight.bold),),
                  SizedBox(width: 83,),
                  Checkbox(
                    value: _isChecked,
                    onChanged: (bool value){
                      _onChanged(0);
                    },
                  )
                ],),
                SizedBox(height: 5,),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 2,
                  color: Colors.black12,
                ),
                SizedBox(height: 10,),
                Row(children: <Widget>[
                  Text('Startdate',style: TextStyle(fontSize: 22,color: Colors.black.withOpacity(0.4),fontWeight: FontWeight.bold),),
                  SizedBox(width: 150,),
                  Checkbox(
                    value: _Press,
                    onChanged: (bool value){
                      _onChanged(2);
                    },
                  )
                ],),
                SizedBox(height: 5,),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 2,
                  color: Colors.black12,
                ),
                SizedBox(height: 5,),
                Row(children: <Widget>[
                  Text('Nationality',style: TextStyle(fontSize: 22,color: Colors.black.withOpacity(0.4),fontWeight: FontWeight.bold),),
                  SizedBox(width: 138,),
                  Checkbox(
                    value: _onPress,
                    onChanged: (bool value){
                      _onChanged(3);
                    },
                  )
                ],),
                SizedBox(height: 5,),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 2,
                  color: Colors.black12,
                )
              ],
            ),
          ),
           SizedBox(height: 7,),
           Row(
             children: <Widget>[
               Padding(padding: EdgeInsets.only(right: 180),),
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
             ],
           ),
             SizedBox(height: 5,),
          SizedBox(
            height: 58,
            width: MediaQuery.of(context).size.width,
            child: RaisedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => StartupScreen4()));
              },
              child: Text(
                'Continue',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
              color: Colors.pink,
            ),
          )
        ],
      ),
    );
  }
}

