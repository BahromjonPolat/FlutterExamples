import 'package:flutter/material.dart';

class HeroAnimationPage extends StatefulWidget {
  const HeroAnimationPage({Key? key}) : super(key: key);

  @override
  _HeroAnimationPageState createState() => _HeroAnimationPageState();
}

class _HeroAnimationPageState extends State<HeroAnimationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: InkWell(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (_)=> const HeroSecondPage()));
        },
        child: Hero(
          tag: "container",
          child: Container(
            height: 100.0,
            width: 100.0,
            color: Colors.deepOrange,
          ),
        ),
      ),),
    );
  }


}

class HeroSecondPage extends StatelessWidget {
  const HeroSecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Hero(
          tag: "container",
          child: Container(
            height: 300.0,
            width: 200.0,
            color: Colors.deepOrange,
          ),
        ),
      ),
    );
  }
}

