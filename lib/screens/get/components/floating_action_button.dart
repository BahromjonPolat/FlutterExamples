import 'package:flutter/material.dart';

class MyFloatingActionButton extends StatelessWidget {
  VoidCallback onPressed;
  IconData iconData;

  MyFloatingActionButton({
    required this.onPressed,
    required this.iconData,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: onPressed,
      child: Icon(iconData),
    );
  }
}
