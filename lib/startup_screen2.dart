import 'package:flutter/material.dart';
import 'package:stenden_guide/startup_screen3.dart';

class StartupScreen2 extends StatefulWidget {
  _Screen2 createState() {
    return _Screen2();
  }
}

class _Screen2 extends State<StartupScreen2> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
//         Image.asset('screen2.png'),
          new Container(
            constraints: new BoxConstraints.expand(
              height: 350.0,
            ),
            alignment: Alignment.topLeft,
            padding: new EdgeInsets.only(left: 2.0, top: 0.0),
            decoration: new BoxDecoration(
              image: new DecorationImage(
                image: new AssetImage('screen2.png'),
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
                'Timeline',
                style: TextStyle(
                    fontSize: 24,
                    color: Colors.indigo,
                    fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'This app features a timeline which will give',
                style: TextStyle(fontSize: 18),
              ),
              Text(
                'you information about Dutch traditions and',
                style: TextStyle(fontSize: 18),
              ),
              Text(
                'information about your arrival and studying',
                style: TextStyle(fontSize: 18),
              ),
              Text(
                'at Stendent.Moreever,the app features a to-',
                style: TextStyle(fontSize: 18),
              ),
              Text(
                'do list to help you which everything that you',
                style: TextStyle(fontSize: 18),
              ),
              Text(
                'need to arrange for your stay in the',
                style: TextStyle(fontSize: 18),
              ),
              Text(
                'Netherlands',
                style: TextStyle(fontSize: 18),
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
            ],
          )),
          SizedBox(
            height: 10,
          ),
          SizedBox(
            height: 70,
            width: MediaQuery.of(context).size.width,
            child: RaisedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => StartupScreen3()));
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
