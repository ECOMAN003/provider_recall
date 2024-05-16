import 'package:flutter/material.dart';
import 'package:provider_recall/consts.dart';

class CartProvider extends ChangeNotifier {
  //create empty list of items and make a setter
  final List<Product> _items = [];
  List<Product> get items => _items;

  void addProduct(Product product) {
    _items.add(product);
    notifyListeners();
  }

  void removeProduct(Product product) {
    _items.remove(product);
    notifyListeners();
  }

  void clearCart() {
    _items.clear();
    notifyListeners();
  }

  double getTotal() {
    return _items.fold(0, (previousValue, item) =>previousValue + item.price,);
  }
}
