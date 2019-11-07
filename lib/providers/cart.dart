import 'package:flutter/material.dart';

class CartItem {
  final String id;
  final String title;
  final int quantity;
  final double price;

  CartItem(
      {@required this.id,
      @required this.title,
      @required this.quantity,
      @required this.price});
}

class Cart with ChangeNotifier {
  Map<String, CartItem> _items = new Map();
  

  Map<String, CartItem> get items => {..._items};

  int get itemsCount => _items.length;
  double get totalAmount {
    double total = 0;
    _items.forEach((key, carItem){
      total += carItem.price * carItem.quantity;
    });
    return total;
  }

  void addItem(String id, String title, double price) {
    if (_items.containsKey(id)) {
      _items.update(
        id,
        (existing) => CartItem(
          id: existing.id,
          price: existing.price,
          quantity: existing.quantity + 1,
          title: existing.title,
        ),
      );
    } else {
      _items.putIfAbsent(
        id,
        () => CartItem(
          id: DateTime.now().toString(),
          title: title,
          price: price,
          quantity: 1,
        ),
      );
    }
    notifyListeners();
  }

  void removeItem(id) {
    _items.remove(id);
    notifyListeners();
  }
}
