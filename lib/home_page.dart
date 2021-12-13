



import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  
  @override
  HomeState createState() => HomeState();
}
class HomeState extends State<Home> {

  //int counter = 0;

  void incrementCounter() {
    
    setState(() {
      counter++;
    });
  }
  void decrementCounter() {
    
    setState(() {
      counter--;
    });
  }

  @override
  //UI
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Homework 1',
          style: TextStyle(color: Colors.yellow),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('san: $counter', style: TextStyle(fontSize: 20.0)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                RaisedButton(
                  child: Text(
                    'kemityy--',
                    style: TextStyle(backgroundColor: Colors.red),
                  ),
                  onPressed: decrementCounter,
                ),
                Container(
                  width: 15.0,
                ),
                RaisedButton(
                  child: Text(
                    'koshyy++',
                    style: TextStyle(backgroundColor: Colors.green),
                  ),
                  onPressed: incrementCounter,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
