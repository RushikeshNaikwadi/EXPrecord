import 'package:flutter/material.dart';

import '../Models/TransactionClass.dart';

import 'AmountSection/AmountSection.dart';
import 'DateTimeSection/DateTimeSection.dart';
import 'TxnTitleSection/TxnTitleSection.dart';

class TransactionWidget extends StatelessWidget {
  final TransactionClass curTxn;
  
  TransactionWidget({
    @required this.curTxn  
  });
  
  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: 10,
        shape: RoundedRectangleBorder(
          side: BorderSide(
            color: Colors.black,
          ),
          borderRadius: BorderRadius.circular(5),
        ),
        color: Colors.grey[300],
        child: Row(
          children: [
            AmountSection(txnAmount: curTxn.txnAmount.toString()),
            SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TxnTitleSection(txnTitle: curTxn.txnTitle),
                SizedBox(height: 5),
                DateTimeSection(dateTime: curTxn.txnDateTime),
              ],
            )
          ],
        )
    );
  }
}
