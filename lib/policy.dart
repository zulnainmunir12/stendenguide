
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stenden_guide/startup_screen4.dart';

class Policy extends StatefulWidget{
  _Policy createState(){
   return _Policy();
  }
}
class _Policy extends State<Policy>{
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
        title: Row(children: <Widget>[SizedBox(width: 80,),
          Text('User Policy',style: TextStyle(fontWeight: FontWeight.bold),)],)
      ),
      body: Column(
        children: <Widget>[
          SizedBox(height: 10,),
           Row(
             children: <Widget>[
               SizedBox(width: 20,),
               Text('Privacy Statement',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
             ],
           ),
          SizedBox(height: 5,),
          Text('Student University of Applies Science handles the',style: TextStyle(fontSize: 17),),
          Text('personal data of the users of this app,Includings ',style: TextStyle(fontSize: 17),),
          Text('names and email address in confidence and only',style: TextStyle(fontSize: 17),),
          Text('uses this data for the purpose for which visitors',style: TextStyle(fontSize: 17),),
          Text('Provided them.Stended acts in accordance with ',style: TextStyle(fontSize: 17),),
         Row(children: <Widget>[SizedBox(width: 25,),
           Text('the Dutch Personal Data Protection Act.',style: TextStyle(fontSize: 17),)],),
          SizedBox(height: 15,),
          Row(
            children: <Widget>[
              SizedBox(width: 20,),
              Text('Security',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
            ],
          ),
          SizedBox(height: 5,),
          Text('Student University of Applies Science uses usally',style: TextStyle(fontSize: 17),),
          Text('accepted technical procedures security guideline ',style: TextStyle(fontSize: 17),),
          Text('to prevent personal data from getting lost,misuse',style: TextStyle(fontSize: 17),),
          Row(children: <Widget>[SizedBox(width: 25,),
            Text('destroyed or inadvertently altered.',style: TextStyle(fontSize: 17),)],),
          SizedBox(height: 15,),
          Row(
            children: <Widget>[
              SizedBox(width: 20,),
              Text('Confidentaily',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
            ],
          ),
          SizedBox(height: 5,),
          Text('Student University of Applies Science handles the',style: TextStyle(fontSize: 17),),
          Text('personal data of the users of this app,Includings ',style: TextStyle(fontSize: 17),),
          Text('names and email address in confidence and only',style: TextStyle(fontSize: 17),),
          Text('uses this data for the purpose for which visitors',style: TextStyle(fontSize: 17),),
          Text('Provided them.Stended acts in accordance with ',style: TextStyle(fontSize: 17),),
          Row(children: <Widget>[SizedBox(width: 25,),
            Text('the Dutch Personal Data Protection Act.',style: TextStyle(fontSize: 17),)],),
          SizedBox(height: 90,),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 75,
            decoration: BoxDecoration(color: Colors.black26.withOpacity(0.1)),
            child: Center(
              child: Container(
                width: 350,
                height: 50,
                decoration: BoxDecoration(color: Colors.pink),
                child: FlatButton(
                  onPressed: (){
                    Navigator.pop(context, MaterialPageRoute(builder: (context){
                      return StartupScreen4();
                    }));
                  },
                  child: Text('I agree to the user policy of this app',style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold),),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

}