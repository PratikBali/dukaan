import 'package:flutter/material.dart';
import 'item_data.dart';
import 'cart_data.dart';
import 'package:provider/provider.dart';
import 'item_tile.dart';

class ItemList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer2<ItemData, CartData>(
      builder: (context, itemData, cartData, Widget? child) {
       return  ListView.builder(
         itemBuilder: (context, index) {
           final item = itemData.items[index];
           return ItemTile(
             itemTitle: item.name,
             itemQuantity: item.quantity,
             imgSrc: item.src,
             addToCartCallback: () {
               cartData.addToCart(item.name, 1, item.src);
               itemData.decreaseQuantity(index);
             }
           );
         },
         itemCount: itemData.itemsCount,
       );
      },
    );
  }
}
