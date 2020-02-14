import 'package:contador/src/pages/counter_page.dart';
import 'package:flutter/material.dart';

// import 'package:contador/src/pages/home_page.dart';

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.black,
        accentColor: Colors.grey,
      ),
      debugShowCheckedModeBanner: false,
      home: Center(
      //  child: HomePage(),
       child: CounterPage(),
      ),
    );
  }

}