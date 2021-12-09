import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

class AnimationPage extends StatefulWidget {
  const AnimationPage({Key? key}) : super(key: key);

  @override
  _AnimationPageState createState() => _AnimationPageState();
}

class _AnimationPageState extends State<AnimationPage>
    with TickerProviderStateMixin {
  late AnimationController _animationController;
  late AlignmentTween _animationTween;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 3),
      // lowerBound: 0.0,
      // upperBound: 1.0,
    );

    _animationTween =
        AlignmentTween(begin: Alignment.bottomRight, end: Alignment.topRight);

    _animationController.addStatusListener((status) {
      if (AnimationStatus.completed == status) {
        _animationController.reverse().orCancel;
      } else {
        _animationController.forward().orCancel;
      }
    });

    _animationController.forward();
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: ElasticIn(
        duration: const Duration(seconds: 1),
        child: Container(
          alignment: Alignment.center,
          color: Colors.amber,
          child: const Text(
            "Flutter",
            style: TextStyle(
                color: Colors.deepOrange,
                fontSize: 32.0),
          ),
        ),
      ),
    );
  }
}
