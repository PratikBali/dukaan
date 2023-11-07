import 'package:flutter/material.dart';

class Cart extends StatefulWidget {
  static const String id = 'cart_screen';

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text('dukaan'),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Text('item 1'),
            Text('item 2'),
            Text('item 3'),
          ],
        ),
      ),
    );
  }
}
