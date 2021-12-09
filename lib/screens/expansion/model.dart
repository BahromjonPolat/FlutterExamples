
import 'package:flutter/material.dart';

class Product {
  final String _title;
  final List<String>_label;
  final Color _color;
  final Color _titleColor;

  Product(this._title, this._label, this._color, this._titleColor);

  List<String> get label => _label;

  String get title => _title;

  Color get color => _color;

  Color get titleColor => _titleColor;
}