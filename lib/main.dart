import 'package:flutter/material.dart';

void main() => runApp(EXPrecord());

class EXPrecord extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('EXPrecord'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Card(
            color: Colors.grey,
            elevation: 5,
            child: Text('CHART!'),
          ),
          Card(
            color: Colors.grey,
            elevation: 5,
            child: Text('LIST OF TX'),
          ),
        ],
      ),
    );
  }
}
