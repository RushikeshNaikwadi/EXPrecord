import 'package:flutter/material.dart';

import '../InputTxnWidgets/InputTxnWidget.dart';
import '../Models/TransactionClass.dart';
import '../Transaction/TxnListWidget.dart';

class UserTxnWidget extends StatefulWidget {
  @override
  State<UserTxnWidget> createState() => _UserTxnWidgetState();
}

class _UserTxnWidgetState extends State<UserTxnWidget> {
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

  void addNewTransaction(String title, double amount) {
      setState(() {
        txnList.add(
            TransactionClass(
                txnId: DateTime.now().toString(),
                txnTitle: title,
                txnAmount: amount,
                txnDateTime: DateTime.now()
            )
        );
      });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InputTxnWidget(txnAdder: addNewTransaction),
        TxnListWidget(txnList: txnList)
      ],
    );
  }
}
