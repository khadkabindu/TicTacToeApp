import 'package:flutter/material.dart';

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
                 minWidth: 200.0,
                 child: RaisedButton(
                   onPressed: (){},
                   color: Colors.white,
                   shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0),),
                   child: Text('Single Player',style: TextStyle(fontWeight: FontWeight.bold),),
                 ),
               ),
               ButtonTheme(
                 minWidth: 200.0,
                 child: RaisedButton(
                   onPressed: (){},
                   color: Colors.white,
                   shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0,),),
                   child: Text('With Friend',style: TextStyle(fontWeight: FontWeight.bold),),
                 ),
               ),
             ],),
          ],
        ),
      ),
    );
  }
}
