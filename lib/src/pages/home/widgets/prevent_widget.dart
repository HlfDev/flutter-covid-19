import 'package:flutter/material.dart';

class PrevendWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 100.0,
          height: 100.0,
          decoration: BoxDecoration(
            color: Color(0xff99ADF9),
            shape: BoxShape.circle,
          ),
          child: Image.asset('assets/images/face_mask.png'),
        ),
        SizedBox(height: 20),
        Text(
          'Lave as mãos',
          style: TextStyle(
            fontSize: 16,
            color: Color(0xff718EFC),
          ),
        ),
      ],
    );
  }
}
