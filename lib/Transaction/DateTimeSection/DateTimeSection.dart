import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DateTimeSection extends StatelessWidget {
  final DateTime dateTime;

  DateTimeSection({
    @required this.dateTime
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      DateFormat.yMMMd().add_jm().format(dateTime),
      style: TextStyle(
        color: Colors.grey[600],
        fontSize: 16,
      ),
    );
  }
}
