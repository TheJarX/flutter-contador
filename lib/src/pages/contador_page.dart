import 'package:flutter/material.dart';

class ContadorPage extends StatefulWidget {

 

 @override
  State<StatefulWidget> createState() =>  _ContadorPageState();

}

class _ContadorPageState extends State<ContadorPage> {

    final _textStyle = TextStyle(fontSize: 25.0); 
    int _contador = 0;

    @override
  Widget build(BuildContext context) {
   return Scaffold(
     floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
     appBar: AppBar(
       title: Text('Contador'),
       centerTitle: true,
       elevation: 2.0,
     ),
     body: Center(
       child: Column(
         mainAxisAlignment: MainAxisAlignment.center,
         children: <Widget>[
           Text('Número de clicks:',
            style: _textStyle,
           ),
           Text('$_contador', 
            style: _textStyle,
           )
         ],
       ),
     ),
     floatingActionButton: _crearBotones()
     
   );
  }

  Widget _crearBotones(){

    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        SizedBox(width: 30.0),
        FloatingActionButton(child: Icon(Icons.clear),onPressed: _reset),
        Expanded(child:SizedBox()),
        FloatingActionButton(child: Icon(Icons.add),onPressed:_increment),
        SizedBox( width: 5.0, ),
        FloatingActionButton(child: Icon(Icons.remove),onPressed:_decrement),
      ],
    );

  }


  void _increment(){
    setState(() => _contador++ );
  }

  void _decrement(){
    setState( () => _contador-- );
  }

  void _reset(){
    setState( () => _contador = 0 );
  }

}