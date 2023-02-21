import 'package:flutter/cupertino.dart';

class TxnTitleSection extends StatelessWidget {
  final String txnTitle;

  TxnTitleSection({
    @required this.txnTitle
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      txnTitle,
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 20,
      ),
    );
  }
}
