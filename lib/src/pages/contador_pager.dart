import 'package:flutter/material.dart';

class ContadorPage extends StatefulWidget {
  @override
  createState() => _ContadorPageState();
}

class _ContadorPageState extends State {
  final TextStyle styleText = new TextStyle(fontSize: 25.0);
  int _counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mi APP'),
        centerTitle: true,
        backgroundColor: Color.fromARGB(150, 150, 150, 10),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'Numero de taps',
            style: styleText,
          ),
          Text('$_counter', style: styleText),
        ],
      )),
      floatingActionButton: _createButtons(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }

  Widget _createButtons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        SizedBox(width: 30),
        FloatingActionButton(
            child: Icon(Icons.exposure_zero), onPressed: _reset),
        Expanded(child: SizedBox(width: 5.0)),
        FloatingActionButton(
            child: Icon(Icons.remove), onPressed: _substraction),
        SizedBox(width: 5.0),
        FloatingActionButton(child: Icon(Icons.add), onPressed: _add),
      ],
    );
  }

  void _add() {
    setState(() => _counter++);
  }

  void _substraction() {
    setState(() => _counter--);
  }

  void _reset() {
    setState(() => _counter = 0);
  }
}
