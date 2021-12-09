import 'package:examples/screens/get/animation_comtainer.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intro_views_flutter/intro_views_flutter.dart';

class IntroPage extends StatelessWidget {
  IntroPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IntroViewsFlutter(
      [
        page,
        page,
        page,
      ],
      onTapDoneButton: () {
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (_) => AnimationLessonPage()));
      },
    );
  }

  final page = PageViewModel(
    pageColor: const Color(0xFF607D8B),
    iconImageAssetPath: 'assets/icons/taxi-driver.png',
    body: const Text(
      'Easy  cab  booking  at  your  doorstep  with  cashless  payment  system',
    ),
    title: const Text('Cabs'),
    mainImage: Image.asset(
      'assets/images/taxi.png',
      height: 285.0,
      width: 285.0,
      alignment: Alignment.center,
    ),
    titleTextStyle: const TextStyle(fontFamily: 'sspu', color: Colors.white),
    bodyTextStyle: const TextStyle(fontFamily: 'sspu', color: Colors.white),
  );
}
