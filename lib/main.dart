import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

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
                  shape: RoundedRectangleBorder(
                    side: BorderSide(
                      color: Colors.purpleAccent,
                    ),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                color: Colors.grey[300],
                child: Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.black,
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      margin: EdgeInsets.symmetric(
                          horizontal: 8,
                          vertical: 9
                      ),
                      padding: EdgeInsets.symmetric(
                          horizontal: 8,
                          vertical: 9
                      ),
                      child: Text(
                          '₹ ${eachTxn.txnAmount}',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.purple
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          eachTxn.txnTitle.toString(),
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(
                          DateFormat.yMMMd().add_jm().format(eachTxn.txnDateTime),
                          style: TextStyle(
                            color: Colors.grey[600],
                            fontSize: 16,
                          ),
                        ),
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
