import 'package:flutter/foundation.dart';

class ItemData extends  ChangeNotifier {

  late List<Item> items = [
    Item(name: 'mobile', price: 100, quantity: 6, src: 'images/apple-iphone-15-pro-max.jpg'),
    Item(name: 'plan', price: 60, quantity: 5, src: 'images/singtel-ultra-1gbps.jpg'),
    Item(name: 'insurance', price: 30, quantity: 4, src: 'images/device-protection.jpg'),
    Item(name: 'accessories', price: 10, quantity: 3, src: 'images/apple-iphone-15-pro-max-case.jpg'),
  ];

  int get itemsCount {
    return items.length;
  }

  addItemInStock(itemName, itemPrice, itemQuantity, imgSrc) {
    var existingIndex = items.indexWhere((element) => element.name == itemName);
    if(existingIndex == -1) {
      items.add(Item(name: itemName, price: itemPrice, quantity: itemQuantity, src: imgSrc));
    } else {
      increaseQuantity(existingIndex);
    }
    notifyListeners();
  }

  void updateItem(Item task) {
    notifyListeners();
  }

  void removeItem(index) {
    items.removeAt(index);
    notifyListeners();
  }

  void increaseQuantity(index) {
    items[index].quantity = items[index].quantity + 1;
    notifyListeners();
  }

  void decreaseQuantity(index) {
    if(items[index].quantity > 0) {
      items[index].quantity = items[index].quantity - 1;
    }
    notifyListeners();
  }
}

class Item {
  final String name;
  final String src;
  int quantity;
  int price;

  Item({required this.quantity,
    required this.name,
    required this.price,
    required this.src});
}
