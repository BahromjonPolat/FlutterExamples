import 'package:examples/screens/get/components/floating_action_button.dart';
import 'package:flutter/material.dart';

class AnimationLessonPage extends StatefulWidget {
  AnimationLessonPage({Key? key}) : super(key: key);

  @override
  _AnimationLessonPageState createState() => _AnimationLessonPageState();
}

class _AnimationLessonPageState extends State<AnimationLessonPage> {

  double _height = 200.0, _width = 200.0;
  Color _color = Colors.green;

  bool _isBig = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AnimatedContainer(
              height: _height,
              width: _width,
              color: _color,
              duration: const Duration(seconds: 1))
        ],
      ),

      floatingActionButton: MyFloatingActionButton(
        onPressed: () {
          setState(() {
            _height = _isBig ? 300.0 : 200.0;
            _width = _isBig ? 150.0 : 200.0;
            _color = _isBig ? Colors.deepOrange : Colors.green;
            _isBig = !_isBig;
          });
        },
        iconData: Icons.add,
      ),
    );
  }
}
