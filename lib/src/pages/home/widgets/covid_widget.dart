import 'package:flutter/material.dart';

class CovidWidget extends StatelessWidget {
  const CovidWidget();
  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: -45,
      left: -50,
      child: Row(
        children: [
          Container(
            width: 225,
            height: 225,
            child: Image.asset('assets/images/virus.png'),
          ),
          Text(
            'COVID-19',
            style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Color(0xffFA83C0)),
          ),
        ],
      ),
    );
  }
}
