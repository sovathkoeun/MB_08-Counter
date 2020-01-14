import 'package:flutter/material.dart';

void main() => runApp(Counters());

class Counters extends StatefulWidget {
  @override
  _CountersState createState() => _CountersState();
}

class _CountersState extends State<Counters> {
  int  _increment = 0;
 
  // Color = _color;
  void add() {
   setState(() {
    _increment++;
   });
  }
  void deadd(){
    setState(() {
      _increment--;
    });
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(  
        appBar: AppBar( 
          title: Text("Count"),
          centerTitle: true,
         ),
        body: Column(  
            children: <Widget>[
            Row( 
              mainAxisAlignment: MainAxisAlignment.spaceAround, 
              children: <Widget>[
                Container(  
                  child: RaisedButton(  
                    onPressed: add,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text("increment", style: TextStyle(color: Colors.white,fontSize: 20.0),),
                    ),
                    color: Colors.teal,
                  ),
                ),
                Container(  
                  child: RaisedButton(  
                    onPressed: deadd,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text("Decrement", style: TextStyle(color: Colors.white,fontSize: 20.0),),
                    ),
                    color: Colors.red,
                  ),
                ),
              ],
              ),
              Container(  
                child: Text("${_increment}",style: TextStyle(fontSize: 40.0),),
              )
            ],
        ),
      ),
    );
  }
}