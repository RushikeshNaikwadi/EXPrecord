import 'package:flutter/cupertino.dart';

import '../Models/TransactionClass.dart';
import 'TransactionWidget.dart';

class TxnListWidget extends StatelessWidget {
  final List<TransactionClass> txnList;

  TxnListWidget({
    @required this.txnList
  });

  @override
  Widget build(BuildContext context) {
    return Column(
        children: txnList.map((eachTxn) {
          return TransactionWidget(curTxn: eachTxn);
        }).toList()
    );
  }
}
