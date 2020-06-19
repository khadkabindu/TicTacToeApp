import 'package:flutter/material.dart';
import 'package:grouped_buttons/grouped_buttons.dart';

class PickChoice extends StatefulWidget {
  @override
  _PickChoiceState createState() => _PickChoiceState();
}

class _PickChoiceState extends State<PickChoice> {
  int _currValue = 0;

  List<int> _group = [
    1,
    2,
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey[900],
        elevation: 0.0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back),
        ),
      ),
      backgroundColor: Colors.blueGrey[900],
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[

          Center(
              child: Text(
            'Pick Your Choice',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20.0,
                color: Colors.white,
                fontFamily: 'Piedra'),
          )),
          Image.asset(
            'images/XO.png',
            width: 300,
          ),
          Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                  mainAxisSize: MainAxisSize.max,
                children: _group
                    .map(
                      (item) => Radio(
                        groupValue: _currValue,
                        onChanged: (int i) => setState(() => _currValue = i),
                        value: item,
                      ),
                    )
                    .toList(),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Text('    First',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
                  Text('      Second',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
                ],
              ),
            ],
          ),

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
              child: Text('CONTINUE',style: TextStyle(fontWeight: FontWeight.bold),),
            ),
          ),

        ],
      ),
    );
  }
}
