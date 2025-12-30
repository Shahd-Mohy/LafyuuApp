import 'package:flutter/material.dart';

class HomeViewModel extends ChangeNotifier {
  bool _isLoading = false;
  List<dynamic> _products = [];
  String _errorMessage = '';

  bool get isLoading => _isLoading;
  List<dynamic> get products => _products;
  String get errorMessage => _errorMessage;

  Future<void> loadProducts() async {
    _isLoading = true;
    _errorMessage = '';
    notifyListeners();

    try {
      // TODO: Implement load products logic
      await Future.delayed(const Duration(seconds: 2)); // Simulate API call

      // Mock products data
      _products = [
        {'id': 1, 'name': 'Product 1', 'price': 29.99},
        {'id': 2, 'name': 'Product 2', 'price': 39.99},
        {'id': 3, 'name': 'Product 3', 'price': 19.99},
      ];

      _isLoading = false;
      notifyListeners();
    } catch (e) {
      _isLoading = false;
      _errorMessage = e.toString();
      notifyListeners();
    }
  }

  void clearError() {
    _errorMessage = '';
    notifyListeners();
  }
}
