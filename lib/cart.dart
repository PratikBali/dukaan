import 'package:dukaan/payment.dart';
import 'package:flutter/material.dart';
import 'cart_list.dart';

class Cart extends StatefulWidget {
  static const String id = 'cart_screen';
  final String title = 'Cart';
  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(),
            Expanded(
              child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: CartList()),
            ),

          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, Payment.id);
        },
        tooltip: 'Go to Cart',
        child: const Icon(Icons.currency_rupee),
        // child: const Icon(Icons.shopping_cart),
        // child: const Icon(Icons.add_shopping_cart),
        // child: const Icon(Icons.remove_shopping_cart),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
