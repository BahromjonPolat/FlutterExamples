import 'package:examples/screens/expansion/model.dart';
import 'package:flutter/material.dart';

List<Product> _productList() => [
      Product(
        "HEALTH",
        ["Skincare", 'Personal care', 'Health', 'Eye care'],
        Colors.blue,
        Colors.blue.shade900,
      ),
      Product(
        "FOOD & DRINK",
        ['Fruits', 'Vegetables', 'Bakery', 'Meats', 'Sweets', 'Oils'],
        Colors.green,
        Colors.amber.shade300,
      ),
      Product(
        "BEAUTY",
        ['Make up', 'Hairstyles', 'Face'],
        Colors.pink.shade200,
        Colors.pink.shade900,
      ),
      Product(
        "BABY & KIDS",
        ['Clothes', 'Toys', 'Bubbles', 'Baby monitors', 'Cartoons'],
        Colors.indigo,
        Colors.white,
      ),
      Product(
        "HOMEWARES",
        ['Furniture', 'Teapots'],
        Colors.amber,
        Colors.black,
      ),
    ];

List<Product> get productList => _productList();
