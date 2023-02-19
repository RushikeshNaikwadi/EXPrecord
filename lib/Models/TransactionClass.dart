import 'package:flutter/cupertino.dart';

class TransactionClass {
  final String txnId;
  final String txnTitle;
  final double txnAmount;
  final   DateTime txnDateTime;

  TransactionClass({
    @required this.txnId,
    @required this.txnTitle,
    @required this.txnAmount,
    @required this.txnDateTime
  });
}