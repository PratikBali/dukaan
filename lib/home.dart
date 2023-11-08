import 'package:flutter/material.dart';
import 'cart.dart';
import 'item_list.dart';

class Home extends StatefulWidget {
  static const String id = 'home_screen';
  final String title = 'Dukaan Home';
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
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
                  child: ItemList()),
            ),

          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, Cart.id);
        },
        tooltip: 'Go to Cart',
        child: const Icon(Icons.shopping_cart_checkout),
        // child: const Icon(Icons.shopping_cart),
        // child: const Icon(Icons.add_shopping_cart),
        // child: const Icon(Icons.remove_shopping_cart),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
