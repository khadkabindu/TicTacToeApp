import 'package:flutter/material.dart';
import 'package:tictactoe/pick_choice.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[900],
      appBar: AppBar(
        backgroundColor: Colors.blueGrey[900],
        elevation: 0.0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[

           RichText(text: TextSpan(style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 40.0,fontFamily: 'Piedra'),children: <TextSpan>[
             TextSpan(text: 'Tic ',style: TextStyle(color: Colors.pink[100],),),
             TextSpan(text: 'Tac ',style: TextStyle(color: Colors.white,),),
             TextSpan(text: 'Toe ',style: TextStyle(color: Colors.lightBlue[300],),),
           ])),

            Image.asset('images/XO.png',width: 300,),
             Column(children: <Widget>[
               ButtonTheme(
                 minWidth: 250.0,
                 child: RaisedButton(
                   onPressed: (){
                     Navigator.push(
                       context,
                       MaterialPageRoute(builder: (context) => PickChoice()),
                     );
                   },
                   color: Colors.white,
                   shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0),),
                   child: Text('SINGLE PLAYER',style: TextStyle(fontWeight: FontWeight.bold),),
                 ),
               ),
               SizedBox(height: 20.0,),
               ButtonTheme(
                 minWidth: 250.0,
                 child: RaisedButton(
                   onPressed: (){
                     Navigator.push(
                       context,
                       MaterialPageRoute(builder: (context) => PickChoice()),
                     );
                   },
                   color: Colors.white,
                   shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0,),),
                   child: Text('WITH A FRIEND',style: TextStyle(fontWeight: FontWeight.bold),),
                 ),
               ),
               SizedBox(height: 40.0,),
               FloatingActionButton(
                 backgroundColor: Colors.white,
                 onPressed: (){},
               child: Icon(Icons.settings,color: Colors.black,),)
             ],),
          ],
        ),
      ),
    );
  }
}
