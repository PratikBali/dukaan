import 'package:flutter/foundation.dart';

class ItemData extends  ChangeNotifier {

  late List<Item> items = [
    Item(name: 'mobile', quantity: 6, src: 'images/apple-iphone-15-pro-max.jpg'),
    Item(name: 'plan', quantity: 5, src: 'images/singtel-ultra-1gbps.jpg'),
    Item(name: 'insurance', quantity: 4, src: 'images/device-protection.jpg'),
    Item(name: 'accessories', quantity: 3, src: 'images/apple-iphone-15-pro-max-case.jpg'),
  ];

  int get itemsCount {
    return items.length;
  }

  addItemInStock(itemName, itemQuantity, imgSrc) {
    var existingIndex = items.indexWhere((element) => element.name == itemName);
    if(existingIndex == -1) {
      items.add(Item(name: itemName, quantity: itemQuantity, src: imgSrc));
    } else {
      increaseQuantity(existingIndex);
    }
    notifyListeners();
  }

  void updateItem(Item task) {
    task.toggleOOS();
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
  bool isOOS;

  Item({required this.quantity, required this.name, this.isOOS = false, required this.src});

  void toggleOOS() {
    isOOS = !isOOS;
  }

}
