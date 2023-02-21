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
    ),
    TransactionClass(
        txnId: 't3',
        txnTitle: 'Water Bottle',
        txnAmount: 20,
        txnDateTime: DateTime.now()
    ),
    TransactionClass(
        txnId: 't4',
        txnTitle: 'Coco Cola',
        txnAmount: 40,
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
          Card(
            color: Colors.cyanAccent,
            elevation: 10,
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 10),
              padding: EdgeInsets.symmetric(horizontal: 5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'Title'
                    ),
                  ),
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'Amount'
                    ),
                  ),
                  TextButton(
                      onPressed: () {},
                      child: Text(
                          'Add Transaction',
                        style: TextStyle(
                          color: Colors.purpleAccent,
                        ),
                      ),
                  )
                ],
              ),
            )
          ),
          TxnListWidget(txnList: txnList)
        ],
      ),
    );
  }
}
