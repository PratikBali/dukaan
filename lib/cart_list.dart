import 'package:dukaan/item_data.dart';
import 'package:flutter/material.dart';
import 'cart_data.dart';
import 'package:provider/provider.dart';
import 'cart_tile.dart';

class CartList extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Consumer2<CartData, ItemData>(
      builder: (context, cartData, itemData, Widget? child) {
        return  ListView.builder(
          itemBuilder: (context, index) {
            final item = cartData.items[index];
            return CartTile(
                itemTitle: item.name,
                itemQuantity: item.quantity,
                imgSrc: item.src,
                removeFromCartCallback: () {
                  cartData.decreaseQuantity(index);
                  itemData.increaseQuantity(index);
                }
            );
          },
          itemCount: cartData.itemsCount,
        );
      },
    );
  }
}
