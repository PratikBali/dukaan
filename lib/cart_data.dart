import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class CartData extends ChangeNotifier {
  late List<Item> items = [];

  int get itemsCount {
    return items.length;
  }

  addToCart(itemName, itemPrice, itemQuantity, imgSrc) {
    var existingIndex = items.indexWhere((element) => element.name == itemName);
    if(existingIndex == -1) {
      items.add(Item(name: itemName, price: itemPrice, quantity: itemQuantity, src: imgSrc));
    } else {
      increaseQuantity(existingIndex);
    }
    notifyListeners();
  }

  void removeItem(index) {
    items.removeAt(index);
    notifyListeners();
  }

  void decreaseQuantity(index) {
    if(items[index].quantity > 1) {
      items[index].quantity = items[index].quantity - 1;
    } else {
      removeItem(index);
    }
    notifyListeners();
  }

  void increaseQuantity(index) {
    items[index].quantity = items[index].quantity + 1;
    notifyListeners();
  }
}

class Item {
  final String name;
  final String src;
  int quantity;
  int price;
  Item({required this.quantity, required this.name, required this.src, required this.price});
}