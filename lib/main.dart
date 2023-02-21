import 'package:flutter/material.dart';

import './Models/TransactionClass.dart';

import './ChartWidget/ChartWidget.dart';
import 'Transaction/TxnListWidget.dart';

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
  final List<TransactionClass> txnList = [
    TransactionClass(
        txnId: 't1',
        txnTitle: 'Cello Gripper',
        txnAmount: 10,
        txnDateTime: DateTime.now()
    ),
    TransactionClass(
        txnId: 't2',
        txnTitle: 'Notebook',
        txnAmount: 60,
        txnDateTime: DateTime.now()
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('mySpending'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ChartWidget(),
          TxnListWidget(txnList: txnList)
        ],
      ),
    );
  }
}
