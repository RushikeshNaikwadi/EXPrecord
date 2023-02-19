import 'package:flutter/material.dart';

import './Models/TransactionClass.dart';

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
          Column(
            children: txnList.map((eachTxn) {
              return Card(
                child: Row(
                  children: [
                    Container(
                      child: Text('${eachTxn.txnAmount.toString()}'),
                    ),
                    Column(
                      children: [
                        Text(
                          eachTxn.txnTitle.toString()
                        ),
                        Text(
                            eachTxn.txnDateTime.toString()
                        )
                      ],
                    )
                  ],
                )
              );
            }).toList()
          )
        ],
      ),
    );
  }
}
