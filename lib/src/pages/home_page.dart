import 'package:flutter/material.dart';
// TODO: remove unused class
class HomePage extends StatelessWidget {

  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Don't Tap it! :D"),
        centerTitle: true,
        elevation: 7.0,
      ),
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Text("Tap it!", textScaleFactor: 5.0,),
              Text(
                '$count', //string intrepolation
                textScaleFactor: 7.5, 
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 48.0
                ),
                
              ),
            ],
          ),
        )
        ),
      // floatingActionButton: FloatingActionButton(
        
      //   child: Icon(Icons.keyboard_arrow_up),
      //   onPressed: () {
      //     print("Hello");
      //   },
      //   ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          FloatingActionButton(
            child: Icon(Icons.keyboard_arrow_up),
            onPressed: () {
              print("Hello");
            },
          ),
          FloatingActionButton(
            child: Icon(Icons.keyboard_arrow_down),
            onPressed: () {
              print("Hello");
            },
          )
        ],
        ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}