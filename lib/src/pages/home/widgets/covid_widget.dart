import 'package:flutter/material.dart';

class CovidWidget extends StatelessWidget {
  const CovidWidget();
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 400,
          height: 400,
          child: Image.asset('assets/images/virus.png'),
        ),
        Text(
          'COVID-19',
          style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Color(0xffFA83C0)),
        ),
      ],
    );
  }
}
