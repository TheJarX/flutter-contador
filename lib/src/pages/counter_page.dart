import 'dart:math';

import 'package:flutter/material.dart';

class CounterPage extends StatefulWidget {
  @override
  createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  int _count = 0;
  double _fontSize = 48.0;
  Color _bgColor = Color.fromRGBO(0, 0, 0, 0.8);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      // appBar: AppBar(
      //   title: Text(""),
      //   centerTitle: true,
      //   elevation: 7.0,
      // ), // I don't like this appbar
      body: Center(
        child: Container(
          color: _bgColor,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Text(
                "Tap it!",
                textScaleFactor: 5.0,
                style: TextStyle(
                  color: Colors.white
                ),
                ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: GestureDetector(
                      child: Text(
                        '$_count',
                        textScaleFactor: 6.5,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: _fontSize,
                          color: Colors.white),
                          textAlign: TextAlign.center,
                          ),
                      onTap: _countUp,
                      onDoubleTap: () {_countDown(context);},
                      onLongPress: _setZero,
                      
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: _renderButtons(context),
    );
  }

  Widget _renderButtons(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        FloatingActionButton(
          child: Icon(Icons.keyboard_arrow_up),
          onPressed: _countUp,
        ),
        FloatingActionButton(
          child: Icon(Icons.keyboard_arrow_down),
          onPressed: () {_countDown(context);},
        )
      ],
    );
  }

  void _countUp() {
    _changeColor();
    setState(() {
      _count++;
      if (_count >= 100) {
        _fontSize = 32.0;
      } else {
        _fontSize = 48.0;
      }
    });
  }

  void _countDown(BuildContext context) {
    _changeColor();
    if (_count > 0) {
      _count--;
      if (_count < 100) {
        _fontSize = 48.0;
      }
    } else  if(_count <= 0 ) {
      setState(() {
        _bgColor = Colors.red;
        _showAlert(context);
      });
    }
    setState(() {});
  }

  void _setZero() {
    setState(() {
      _count = 0;
    });
  }

  void _changeColor() {
    final random = Random();
    _bgColor = Color.fromRGBO(
      random.nextInt(200), 
      random.nextInt(200), 
      random.nextInt(200), 
      .8
    );
  }
  
  void _showAlert(BuildContext context) {
    showDialog(
      barrierDismissible: false,
      context: context,
      builder: (context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
          title: Text("Holy Guacamole!"),
          content: Column(
            mainAxisSize: MainAxisSize.min, // Para que no ocupe toda la pantalla
            children: <Widget>[
              Text("do you want to do negative things? \nNot in my guard"),
            ],
          ),
          actions: <Widget>[
            FlatButton(
              child: Text("Ok, sorry :("),
              onPressed: () => Navigator.of(context).pop(),
            ),
            FlatButton(
              child: Text("I'm inevitable ):D"),
              textColor: Colors.red,
              onPressed: () {
                setState(() {
                  _count = -1;
                  Navigator.of(context).pop();
                });
              },
            ),
            
          ],
        );
      },
    );
  }

}
