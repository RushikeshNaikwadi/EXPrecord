import 'package:flutter/material.dart';

import './UserTxnWidget/UserTxnWidget.dart';
import './ChartWidget/ChartWidget.dart';

void main() => runApp(mySpending());

class mySpending extends StatelessWidget {
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
        title: Text('mySpending'),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ChartWidget(),
            UserTxnWidget(),
          ],
        ),
      ),
    );
  }
}
