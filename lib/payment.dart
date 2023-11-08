import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'cart_data.dart';

class Payment extends StatefulWidget {
  static const String id = 'payment_screen';
  final String title = 'Payment';

  @override
  State<Payment> createState() => _PaymentState();

  int getCartTotalPrice(cartData) {
    int cartTotal = 0;
    int quantity = 0;
    cartData.forEach((element) => {
      quantity = element.price * element.quantity,
      cartTotal = cartTotal + quantity
    });
    return cartTotal;
  }
}

class _PaymentState extends State<Payment> {
  @override
  Widget build(BuildContext context) {
    return Consumer<CartData>(
      builder: (context, cartData, Widget? child) {
        num cartTotal = widget.getCartTotalPrice(cartData.items);
        return  Scaffold(
          appBar: AppBar(
            backgroundColor: Theme.of(context).colorScheme.primary,
            title: Text(widget.title),
          ),
          body: Container(
              child: Center(
                child: Text(
                    'payment $cartTotal',
                  style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.w900
                  ),
                ),
              )
          ),
        );
      },
    );
  }
}
