import 'package:flutter/material.dart';

class CounterPage extends StatefulWidget {
  @override
  createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  int _count = 0;
  double _fontSize = 48.0;

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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Text(
                "Tap it!",
                textScaleFactor: 5.0,
                ),
              Row(
                children: <Widget>[
                  // TODO: Change to a GestureDetector() 
                  Expanded(
                    child: MaterialButton(
                      child: Text(
                        '$_count',
                        textScaleFactor: 6.5,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: _fontSize,
                            color: Colors.white),
                      ),
                      onPressed: _countUp,
                      onLongPress: _setZero,
                      // TODO: Remove this
                      // splashColor: Colors.transparent, // tap
                      // highlightColor: Colors.transparent, // long tap
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: _renderButtons(),
    );
  }

  Widget _renderButtons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        FloatingActionButton(
          child: Icon(Icons.keyboard_arrow_up),
          onPressed: _countUp,
        ),
        FloatingActionButton(
          child: Icon(Icons.keyboard_arrow_down),
          onPressed: _countDown,
        )
      ],
    );
  }

  void _countUp() {
    setState(() {
      _count++;
      if (_count >= 100) {
        _fontSize = 32.0;
      } else {
        _fontSize = 48.0;
      }
    });
    print(_count);
  }

  void _countDown() {
    if (_count > 0) {
      _count--;
      if (_count < 100) {
        _fontSize = 48.0;
      }
    }
    print(_count);
    setState(() {});
  }

  void _setZero() {
    setState(() {
      _count = 0;
    });
  }
}
