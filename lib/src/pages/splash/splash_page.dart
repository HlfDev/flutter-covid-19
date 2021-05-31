import 'package:covid_19/src/utils/colors.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();

    _controller =
        AnimationController(vsync: this, duration: Duration(seconds: 2))
          ..repeat();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Container(
      height: double.infinity,
      width: double.infinity,
      color: primaryColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'COVID-19',
            style: TextStyle(
                fontSize: 64,
                fontWeight: FontWeight.bold,
                color: Color(0xffE1ECFF)),
          ),
          AnimatedBuilder(
            animation: _controller,
            builder: (_, child) {
              return Transform.rotate(
                angle: _controller.value * 6.3,
                child: child,
              );
            },
            child: Container(
              child: Image.asset('assets/images/virus.png'),
            ),
          ),
        ],
      ),
    )));
  }
}
