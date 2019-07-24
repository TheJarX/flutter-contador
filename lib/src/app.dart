import 'package:flutter/material.dart';

import 'package:contador/src/pages/contador_page.dart';


class MyApp extends StatelessWidget {

  @override
  Widget build( context ) {

    
    return MaterialApp( 
      theme: ThemeData(
        primarySwatch: Colors.indigo,
        accentColor: Colors.indigoAccent,
      ),
      debugShowCheckedModeBanner: false,
      home: Center(
        child: ContadorPage(),
      ),
    );

  }

}