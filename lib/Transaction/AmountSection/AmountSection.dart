import 'package:flutter/material.dart';

class AmountSection extends StatelessWidget {
  final String txnAmount;

  AmountSection({
   @required this.txnAmount
  });

  @override
  Widget build(BuildContext context) {
    return Container(
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
        '₹ ${txnAmount}',
        style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
            color: Colors.purple
        ),
      ),
    );
  }
}
