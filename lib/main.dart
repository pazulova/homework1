import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Belajar Flutter',
      theme: ThemeData(
          // primarySwatch: Colors.orange,
          ),
      home: Home(),
    );
  }
}

//Statefulwidget
class Home extends StatefulWidget {
  @override
  // membuat state
  HomeState createState() => HomeState();
}

//HomeState
class HomeState extends State<Home> {
  // inisialisasi
  int counter = 2;

  //Fungsi menambah value counter
  void incrementCounter() {
    // Melakukan perubahan state counter
    setState(() {
      counter++;
    });
  }

  //Fungsi mengurangi value counter
  void decrementCounter() {
    // Melakukan perubahan state counter
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
