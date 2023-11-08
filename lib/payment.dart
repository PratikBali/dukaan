import 'package:flutter/material.dart';

class Payment extends StatefulWidget {
  static const String id = 'payment_screen';
  @override
  State<Payment> createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        'payment'
      )
    );
  }
}
