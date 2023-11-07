import 'package:flutter/material.dart';
import 'item_data.dart';
import 'package:provider/provider.dart';
import 'item_tile.dart';

class ItemList extends StatelessWidget {
  const ItemList({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<ItemData>(
      builder: (context, itemData, Widget? child) {
       return  ListView.builder(
         itemBuilder: (context, index) {
           final item = itemData.items[index];
           return ItemTile(
             itemTitle: item.name,
             itemQuantity: item.quantity,
             imgSrc: item.src,
             addToCartCallback: () {
               itemData.decreaseQuantity(index);
             }
           );
         },
         itemCount: itemData.tasksCount,
       );
      },
    );
  }
}
