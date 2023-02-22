import 'package:flutter/material.dart';

class InputTxnWidget extends StatelessWidget {
  final Function txnAdder;

  InputTxnWidget({
    @required this.txnAdder
  });

  final titleController = TextEditingController();
  final amountController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Card(
        color: Colors.grey[200],
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
                controller: titleController,
              ),
              TextField(
                decoration: InputDecoration(
                    labelText: 'Amount'
                ),
                controller: amountController,
              ),
              TextButton(
                onPressed: () => txnAdder(titleController.text, double.parse(amountController.text)),
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
    );
  }
}
